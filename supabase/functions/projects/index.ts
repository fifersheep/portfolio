import { serve } from "https://deno.land/std@0.168.0/http/server.ts";
import { corsHeaders } from "../_shared/cors.ts";
import { supabase_request } from "../_shared/request.ts";

supabase_request("/projects", async (supabaseClient) => {
  const { data: projects, error } = await supabaseClient
    .from("projects")
    .select("*");

  if (error) throw error;

  return new Response(JSON.stringify({ projects }), {
    headers: { ...corsHeaders, "Content-Type": "application/json" },
    status: 200,
  });
});
