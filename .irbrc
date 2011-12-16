require 'irb/completion'
require 'pp'

IRB.conf[:AUTO_INDENT] = true
IRB.conf[:PROMPT][:CUSTUME] = { 
  :PROMPT_I => "%03n:>> ",
  :PROMPT_N => "%03n:%i>",
  :PROMPT_S => "%03n:>%l ",
  :PROMPT_C => "%03n:>> ",
  :RETURN => "=> %s\n"
}
IRB.conf[:PROMPT_MODE] = :CUSTUME

if defined? Rails::Console
  ActiveRecord::Base.logger = Logger.new(STDOUT)
  ActiveResource::Base.logger = Logger.new(STDOUT)

  if defined? Hirb
    Hirb.enable
  end
end

Readline.completion_proc = ->(input) do
  Readline.completion_append_character = nil
  IRB::InputCompletor::CompletionProc.(input)
end