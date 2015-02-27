class Response
  module KnownQuestions
    ALL = [
      Family = "visit family",
      Beach = "go to the beach",
      Abroad = "go to europe!",
      NextJob = "just start your new job!",
      Startup = "make a startup!",
      Errands = "do errands the whole time!",
      NetflixReddit = "watch netflix / surf reddit and eat cheetos!",
    ]
  end

  def ask x # "Shouldn't you do <X> instead?"
    case x
    when KnownQuestions::Family
      'I love my family. I can visit my family on any weekend. I aim to visit them at least four times per year.'
    when KnownQuestions::Beach
      'Which beach? Where? Why?'
    when KnownQuestions::Abroad
      'I would love to but that is stress, not relaxation; I can do that pretty easily during the work year too (with less guilt than "just staying home")'
    when KnownQuestions::NextJob
      'No, I tried that last time. I want some me-time in between, like at TW sometimes you have space between projects to write up all the open source libraries.'
    when KnownQuestions::Startup
      'No good ideas right now and I do not want the long commitment right now'
    when KnownQuestions::Errands
      'I do plan to do some errands: clothing shopping, doctor visit. I do not have enough errands to fill all the time'
    when KnownQuestions::NetflixReddit
      'I am trying to avoid that'
    else
      "I didn't think of that yet."
    end
  end
end
