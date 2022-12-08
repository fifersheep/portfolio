import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:portfolio/domain/core/error/failures.dart';
import 'package:portfolio/domain/projects/entities/project.dart';
import 'package:portfolio/domain/projects/projects_repository.dart';

final flutter = ProjectTag(
  label: "Flutter",
  labelColor: "#FFFFFF",
  color: "#1389FD",
  style: "fill",
);

final android = ProjectTag(
  label: "Android",
  labelColor: "#000000",
  color: "#8BC34A",
  style: "fill",
);

final firebase = ProjectTag(
  label: "Firebase",
  labelColor: "#000000",
  color: "#FFCA28",
  style: "fill",
);

final supabase = ProjectTag(
  label: "Supabase",
  labelColor: "#000000",
  color: "#85E0B7",
  style: "fill",
);

final openSource = ProjectTag(
  label: "Open Source",
  labelColor: "#6E9FCD",
  color: "#6E9FCD",
  style: "outline",
);

@LazySingleton(as: ProjectsRepository)
class StubbedProjectsRepository implements ProjectsRepository {
  @override
  Future<Either<Failure, List<Project>>> getProjects() async => Right([
        Project(
          title: "Dice",
          summary: "A web app for playing a game of liar's dice with friends online.",
          detail: "The detail",
          coverImageUrl:
              "https://cxmpioxuqmkkjbsihpbb.supabase.co/storage/v1/object/sign/projects/covers/dice.png?token=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1cmwiOiJwcm9qZWN0cy9jb3ZlcnMvZGljZS5wbmciLCJ0cmFuc2Zvcm1hdGlvbnMiOiIiLCJpYXQiOjE2NzA1Mzg1OTAsImV4cCI6MTk4NTg5ODU5MH0.fYw8XJOBrVTD9eYOj5oNZpqCcmOQ2PLQ5jzkLkgHIcw",
          tags: [flutter, supabase, openSource],
          callToActions: [
            ProjectCallToAction(
              type: "link",
              action: "https://gitlab.com/fifersheep/dice",
              style: "tertiary",
              label: "Repository",
            )
          ],
        ),
        Project(
          title: "Names in a Hat",
          summary:
              "My first ever personal software project, which helped develop my skills to kick start my mobile development career.",
          detail: "Detail",
          coverImageUrl:
              "https://cxmpioxuqmkkjbsihpbb.supabase.co/storage/v1/object/sign/projects/covers/names-in-a-hat.png?token=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1cmwiOiJwcm9qZWN0cy9jb3ZlcnMvbmFtZXMtaW4tYS1oYXQucG5nIiwidHJhbnNmb3JtYXRpb25zIjoiIiwiaWF0IjoxNjcwNTM4NTkyLCJleHAiOjE5ODU4OTg1OTJ9.leTNSZxcNw4A6JSKU2xRR1J5xzJIGo-UasVaW17qjUw",
          tags: [android, openSource],
          callToActions: [
            ProjectCallToAction(
              type: "route",
              action: "projects/android-names-in-a-hat",
              style: "primary",
              label: "Details",
            ),
            ProjectCallToAction(
              type: "link",
              action: "https://github.com/fifersheep/android-names-in-a-hat",
              style: "tertiary",
              label: "Repository",
            )
          ],
        ),
        Project(
          title: "Portfolio",
          summary: "A project used to take a deeper dive into flutter, built for the web.",
          detail: "Detail",
          coverImageUrl:
              "https://cxmpioxuqmkkjbsihpbb.supabase.co/storage/v1/object/sign/projects/covers/portfolio.png?token=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1cmwiOiJwcm9qZWN0cy9jb3ZlcnMvcG9ydGZvbGlvLnBuZyIsInRyYW5zZm9ybWF0aW9ucyI6IiIsImlhdCI6MTY3MDUzODU4OCwiZXhwIjoxOTg1ODk4NTg4fQ.dbgRuqAX5279tU-ey-xIuPu7OB483N7-1B8tRSDUWgg",
          tags: [flutter, openSource],
          callToActions: [
            ProjectCallToAction(
              type: "route",
              action: "projects/portfolio",
              style: "primary",
              label: "Details",
            ),
            ProjectCallToAction(
              type: "link",
              action: "https://gitlab.com/fifersheep/portfolio",
              style: "tertiary",
              label: "Repository",
            )
          ],
        ),
      ]);
}
