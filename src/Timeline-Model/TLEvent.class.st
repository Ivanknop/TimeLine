Class {
	#name : 'TLEvent',
	#superclass : 'Object',
	#instVars : [
		'title',
		'description',
		'tags',
		'date',
		'bibliography'
	],
	#category : 'Timeline-Model',
	#package : 'Timeline-Model'
}

{ #category : 'as yet unclassified' }
TLEvent class >> assertExistTitle: aTitle and: aDate [

  ( aTitle isNil or: [ aTitle isEmpty ] ) ifTrue: [ self error: 'El titulo es obligatorio' ].

  aDate isNil ifTrue: [ self error: 'La fecha es obligatoria' ]
]

{ #category : 'as yet unclassified' }
TLEvent class >> titled: aTitle at: aDate [

  self assertExistTitle: aTitle and: aDate.
  ^ self new initializeTitled: aTitle at: aDate
]

{ #category : 'initialization' }
TLEvent >> addBibliography: aBibliography [

  ^ bibliography add: aBibliography
]

{ #category : 'initialization' }
TLEvent >> addDescription: aDescription [

  ^ description := aDescription
]

{ #category : 'initialization' }
TLEvent >> addTag: tag [

  ^ tags add: tag
]

{ #category : 'initialization' }
TLEvent >> bibliography [

  ^ bibliography
]

{ #category : 'initialization' }
TLEvent >> date [

  ^ date
]

{ #category : 'initialization' }
TLEvent >> description [

  ^ description
]

{ #category : 'initialization' }
TLEvent >> initializeTitled: aTitle at: aDate [

  title := aTitle.
  date := aDate.
  bibliography := OrderedSet new.
  description := ''.
  tags := OrderedSet new
]

{ #category : 'initialization' }
TLEvent >> tags [

  ^ tags
]

{ #category : 'initialization' }
TLEvent >> title [

  ^ title
]
