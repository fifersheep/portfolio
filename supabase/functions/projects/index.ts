import { serve } from "https://deno.land/std@0.168.0/http/server.ts";
import { supabase_request } from "../_shared/request.ts";
import { PostgrestResponse } from "https://esm.sh/@supabase/supabase-js@1.33.1";

interface ProjectTag {
  id: number;
  label: string;
  label_color: string;
  color: string;
  style: string;
}

interface TagsForProject {
  project_id: number;
  project_tag_id: number;
  project_tags: [ProjectTag];
}

supabase_request(async (supabaseClient) => {
  const { data, error } = await supabaseClient
    .from("projects")
    .select(
      "*, project_tags_for_project!left(*, project_tags!inner(*)), project_call_to_actions!left(*)"
    );

  if (error) throw error;

  if (data) {
    const projects = data.map((project) => {
      const {
        project_tags_for_project,
        project_call_to_actions,
        ...remainingProperties
      } = project;
      const tags = project_tags_for_project.map(
        (tfp: TagsForProject) => tfp.project_tags
      );
      return {
        ...remainingProperties,
        tags,
        call_to_actions: project_call_to_actions,
      };
    });
    return { projects };
  }

  throw { message: "No data" };
});
