import { serve } from "https://deno.land/std@0.168.0/http/server.ts";
import { corsHeaders } from "../_shared/cors.ts";
import { supabase_request } from "../_shared/request.ts";

supabase_request("/experiences", async (supabaseClient) => {
  const { data: experiences, error } = await supabaseClient
    .from("experiences")
    .select("*")
    .order("start_date", { ascending: false });

  if (error) throw error;

  return new Response(JSON.stringify({ experiences }), {
    headers: { ...corsHeaders, "Content-Type": "application/json" },
    status: 200,
  });
});
