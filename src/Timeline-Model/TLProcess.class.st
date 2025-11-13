Class {
	#name : 'TLProcess',
	#superclass : 'Object',
	#instVars : [
		'title',
		'beginDate',
		'endDate'
	],
	#category : 'Timeline-Model',
	#package : 'Timeline-Model'
}

{ #category : 'as yet unclassified' }
TLProcess class >> assertExistTitle: aTitle and: interval [

  ( aTitle isNil or: [ aTitle isEmpty ] ) ifTrue: [ self error: 'El titulo es obligatorio' ].

  interval isNil ifTrue: [ self error: 'El rango de fechas es obligatorio' ]
]

{ #category : 'as yet unclassified' }
TLProcess class >> titled: aTitle from: aBeginDate to: anEndDate [

  self assertExistTitle: aTitle and: ( aBeginDate to: anEndDate ).
  ^ self new initializeTitled: aTitle from: aBeginDate to: anEndDate
]

{ #category : 'initialization' }
TLProcess >> beginDate [

  ^ beginDate
]

{ #category : 'initialization' }
TLProcess >> endDate [

  ^ endDate
]

{ #category : 'initialization' }
TLProcess >> initializeTitled: aTitle from: aBeginDate to: anEndDate [

  title := aTitle.
  beginDate := aBeginDate.
  endDate := anEndDate
]

{ #category : 'initialization' }
TLProcess >> title [

  ^ title
]
