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

interface ProjectTagsForProject {
  project_id: number;
  project_tag_id: number;
  project_tags: [ProjectTag];
}

supabase_request("/projects", async (supabaseClient) => {
  const { data, error } = await supabaseClient
    .from("projects")
    .select("*, project_tags_for_project!inner(*, project_tags!inner(*))");

  if (error) throw error;

  if (data) {
    const r = data.map((project) => {
      const { project_tags_for_project, ...rest } = project;
      const tags = project_tags_for_project.map(
        (ptfp: ProjectTagsForProject) => ptfp.project_tags
      );
      return { ...rest, tags };
    });
    return new Response(JSON.stringify(r), {
      headers: { ...corsHeaders, "Content-Type": "application/json" },
      status: 200,
    });
  }

  throw { message: "No data" };
});
