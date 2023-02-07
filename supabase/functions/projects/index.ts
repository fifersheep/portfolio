import { serve } from "https://deno.land/std@0.168.0/http/server.ts";
import { corsHeaders } from "../_shared/cors.ts";
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
interface ProjectCallToAction {
  id: number;
  label: string;
  type: string;
  action: string;
  style: string;
}

interface CallToActionsForProject {
  project_id: number;
  project_call_to_action_id: number;
  project_call_to_actions: [ProjectCallToAction];
}

supabase_request("/projects", async (supabaseClient) => {
  const { data, error } = await supabaseClient
    .from("projects")
    .select(
      "*, project_tags_for_project!left(*, project_tags!inner(*)), project_call_to_actions_for_project!left(*, project_call_to_actions!inner(*))"
    );

  if (error) throw error;

  if (data) {
    const projects = data.map((project) => {
      const {
        project_tags_for_project,
        project_call_to_actions_for_project,
        ...rest
      } = project;
      const tags = project_tags_for_project.map(
        (tfp: TagsForProject) => tfp.project_tags
      );
      const call_to_actions = project_call_to_actions_for_project.map(
        (ctafp: CallToActionsForProject) => ctafp.project_call_to_actions
      );
      return { ...rest, tags, call_to_actions };
    });
    return new Response(JSON.stringify({ projects }), {
      headers: { ...corsHeaders, "Content-Type": "application/json" },
      status: 200,
    });
  }

  throw { message: "No data" };
});
