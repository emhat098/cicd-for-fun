describe('template spec', () => {
  it('passes', () => {
    cy.visit('http://localhost:3000')
    cy.get('h2.subtitle').then(h2 => {
      expect(h2.text(), 'You are connected to MongoDB');
    })
  })
})