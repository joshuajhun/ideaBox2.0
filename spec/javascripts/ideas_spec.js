describe('idea spec', function () {

  it('should find index element', function () {
    MagicLamp.load('dashboard/index');
    assert.equal($('#index').length, 1);
  });

});

describe('idea spec', function () {

  it('display all ideas', function () {
    MagicLamp.load('dashboard/index');
    assert.equal($('#idea').length, 0);
  });

});
