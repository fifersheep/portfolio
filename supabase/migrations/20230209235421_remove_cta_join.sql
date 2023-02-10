alter table "public"."project_call_to_actions" add column "project_id" bigint;

alter table "public"."project_call_to_actions" add constraint "project_call_to_actions_project_id_fkey" FOREIGN KEY (project_id) REFERENCES projects(id) not valid;

alter table "public"."project_call_to_actions" validate constraint "project_call_to_actions_project_id_fkey";

update "public"."project_call_to_actions"
set "project_id" = "public"."project_call_to_actions_for_project"."project_id"
from "public"."project_call_to_actions_for_project"
where "public"."project_call_to_actions"."id" = "public"."project_call_to_actions_for_project"."project_call_to_action_id";

alter table "public"."project_call_to_actions" alter column "project_id" set not null;

drop policy "Enable read access for all users" on "public"."project_call_to_actions_for_project";

alter table "public"."project_call_to_actions_for_project" drop constraint "fk_project_call_to_action_id";

alter table "public"."project_call_to_actions_for_project" drop constraint "fk_project_id";

alter table "public"."project_call_to_actions_for_project" drop constraint "project_call_to_actions_for_p_project_id_project_call_to_ac_key";

drop index if exists "public"."project_call_to_actions_for_p_project_id_project_call_to_ac_key";

drop table "public"."project_call_to_actions_for_project";

