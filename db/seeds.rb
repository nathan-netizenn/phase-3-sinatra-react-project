puts "Seeding..."

submission = Submission.create(comment: "once a soldier, always a soldier")

150.times do
  random_quote = Randomquote.create(quoter: Faker::Quote.yoda)
end

quote = Quote.create(content: "book writing", author: "Kenne", random_quote_id: Randomquote.last.id, submission_id: submission.id)

puts "Seed data generated successfully."
