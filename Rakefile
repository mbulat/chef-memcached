desc "test"
task :default => [:foodcritic, :boot, :cook]

desc "run foodcritic"
task :foodcritic do
  sh "foodcritic . --epic-fail any 2>/dev/null"
end

desc "1 cold cook, 1 warm cook"
task :boot do
  sh("vagrant destroy -f && vagrant up")
end

task :cook do
  sh("vagrant provision")
end
