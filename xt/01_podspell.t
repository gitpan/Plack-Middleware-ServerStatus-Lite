use Test::More;
eval q{ use Test::Spelling };
plan skip_all => "Test::Spelling is not installed." if $@;
add_stopwords(map { split /[\s\:\-]/ } <DATA>);
$ENV{LANG} = 'C';
set_spell_cmd("aspell -l en list") if `which aspell`;
all_pod_files_spelling_ok('lib');
__DATA__
Masahiro Nagano
kazeburo {at} gmail.com
Plack::Middleware::ServerStatus::Lite
Starman
IO
middleware
cho45
keepalive
ps
IPv

