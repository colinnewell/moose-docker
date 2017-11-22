FROM debian:stretch

RUN apt-get update && apt-get install -y cpanminus build-essential less libssl-dev openssl zlib1g-dev git
RUN cpanm --installdeps Moose
ENV PERL5LIB=.
RUN cpanm DateTime Term::ReadLine::Perl Term::ReadKey Dist::Zilla Devel::PPPort\
        Dist::Zilla::Plugin::MakeMaker::Awesome ExtUtils::HasCompiler Pod::Weaver::Section::AllowOverride\
        Test::Inline Test::Inline::Extract IPC::System::Simple \
        Dist::Zilla::Plugin::BumpVersionAfterRelease\
        Dist::Zilla::Plugin::CheckChangesHasContent Dist::Zilla::Plugin::CheckVersionIncrement\
        Dist::Zilla::Plugin::Conflicts Dist::Zilla::Plugin::CopyFilesFromRelease\
        Dist::Zilla::Plugin::EnsurePrereqsInstalled Dist::Zilla::Plugin::Git::Check\
        Dist::Zilla::Plugin::Git::CheckFor::CorrectBranch Dist::Zilla::Plugin::Git::Commit\
        Dist::Zilla::Plugin::Git::Contributors Dist::Zilla::Plugin::Git::Describe\
        Dist::Zilla::Plugin::Git::GatherDir Dist::Zilla::Plugin::Git::Push\
        Dist::Zilla::Plugin::Git::Remote::Check Dist::Zilla::Plugin::Git::Tag\
        Dist::Zilla::Plugin::MetaProvides::Package Dist::Zilla::Plugin::ModuleIncluder\
        Dist::Zilla::Plugin::MojibakeTests Dist::Zilla::Plugin::PPPort\
        Dist::Zilla::Plugin::Prereqs::AuthorDeps Dist::Zilla::Plugin::PromptIfStale\
        Dist::Zilla::Plugin::ReadmeAnyFromPod Dist::Zilla::Plugin::RewriteVersion\
        Dist::Zilla::Plugin::Run::AfterRelease Dist::Zilla::Plugin::RunExtraTests\
        Dist::Zilla::Plugin::SurgicalPodWeaver Dist::Zilla::Plugin::Test::CPAN::Changes\
        Dist::Zilla::Plugin::Test::CheckBreaks Dist::Zilla::Plugin::Test::Compile\
        Dist::Zilla::Plugin::Test::EOL Dist::Zilla::Plugin::Test::Kwalitee \
        Dist::Zilla::Plugin::Test::NoTabs Dist::Zilla::Plugin::Test::ReportPrereqs \
        Dist::Zilla::Plugin::lib

ENV PERL5LIB=
VOLUME /home/developer
WORKDIR /home/developer
