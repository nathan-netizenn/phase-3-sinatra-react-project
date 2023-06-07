class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get '/pet' do
    quote = Quote.all
    quote.to_json
  end
  get '/pet/:id' do
    quote = Quote.find(params[:id])
    quote.to_json
  end 

  post '/pet' do
    submission = Submission.create(comment: params[:comment])
    random_quote = Randomquote.create(quoter: Faker::Quote.yoda)

    quote = Quote.create(
      content: params[:content],
      author: params[:author],
      submission_id: submission.id,
      random_quote_id: random_quote.id
    )

    quote.to_json
  end

  patch '/pet/:id' do
    park = Quote.find(params[:id])
    park.update(
      content: params[:content],
      author: params[:author]
    )
    park.to_json
  end

  delete '/pet/:id' do
   park = Quote.find(params[:id])
   park.destroy
   park.to_json
  end

  get '/pat' do
    rnd = Randomquote.all
    rnd.to_json
  end

  get '/pa' do
    sub = Submission.all
    sub.to_json
  end

  get '/pa/:id' do
    sub = Submission.find(params[:id])
    sub.to_json
  end

  post '/pa' do
    sub = Submission.create(
      comment: params[:comment]
    )
    sub.to_json
  end
  
  patch '/pa/:id' do
    sub = Submission.find(params[:id])
    sub.update(
      comment: params[:comment]
    )
    sub.to_json
  end

  delete '/pa/:id' do
    sub = Submission.find(params[:id])
    sub.destroy
    sub.to_json
  end

end
