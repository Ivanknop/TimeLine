Class {
	#name : 'TLEventTest',
	#superclass : 'TestCase',
	#category : 'Timeline-Tests',
	#package : 'Timeline-Tests'
}

{ #category : 'tests' }
TLEventTest >> testCannotCreateEventWithoutDate [

  self
    should: [ TLEvent titled: 'Un titulo' at: nil ]
    raise: Error
    description: 'La fecha es obligatoria'
]

{ #category : 'tests' }
TLEventTest >> testCannotCreateEventWithoutTitle [

  self
    should: [ TLEvent titled: nil at: December twentieth , 2001 ]
    raise: Error
    description: 'El titulo es obligatorio'
]

{ #category : 'tests' }
TLEventTest >> testCreateEvent [

  | event paper tags |
  event := TLEvent titled: 'Crisis del 2001' at: December twentieth , 2001.
  paper := Dictionary new
             at: #title put: 'La década perdida';
             at: #author put: 'Alberto Bonnet';
             at: #year put: 2008;
             yourself.
  tags := OrderedSet with: 'Argentina' with: 'Politica'.
  self
    assert: event title equals: 'Crisis del 2001';
    assert: event date equals: December twentieth , 2001;
    assert: event description equals: '';
    assert: event bibliography isEmpty;
    assert: event tags isEmpty.

  event addBibliography: paper.
  self assert: event bibliography size equals: 1.

  event addDescription: 'Renuncia de De La Rua tras la represion y los 34 asesinados por la misma'.
  self
    assert: event description
    equals: 'Renuncia de De La Rua tras la represion y los 34 asesinados por la misma'.
  event
    addTag: 'Argentina';
    addTag: 'Politica'.
  self
    assert: event tags size equals: 2;
    assert: event tags equals: tags.
  event addTag: 'Argentina'.
  self assert: event tags size equals: 2
]
