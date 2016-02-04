MagicLamp.fixture do
  Idea.create(name: 'first note',  body: 'wowowowow', quality: 0)
  Idea.create(name: 'second note', body: 'wowowowow', quality: 0)
  render template: 'dashboard/index'
end
