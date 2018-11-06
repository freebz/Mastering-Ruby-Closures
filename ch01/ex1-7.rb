# Implementing Notifier

good_report = OpenStruct.new(to_csv: "59.99,Great Success")

Notifier.new(Generator.new(good_report),
             on_success: lambda { |r| puts "Send #{r} to boss@acme.co" },
             on_failure: lambda { puts "Send email to ben@ocme.co" }
            ).tap do |n|
  n.run #=> Send 59.99,Great Success to boss@acme.co
end


bad_report = OpenStruct.new(to_csv: nil)
Notifier.new(Generator.new(bad_report),
             on_success: lambda { |r| puts "Send #{r} to boss@acme.co" },
             on_failure: lambda { puts "Send email to ben@ocme.co" }
            ).tap do |n|
  n.run #=> Whoops! Send email to ben@ocme.co
end
