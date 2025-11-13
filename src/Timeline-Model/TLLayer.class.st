Class {
	#name : 'TLLayer',
	#superclass : 'Object',
	#instVars : [
		'title',
		'processes',
		'events'
	],
	#category : 'Timeline-Model',
	#package : 'Timeline-Model'
}

{ #category : 'instance creation' }
TLLayer class >> titled: aTitle [

  ^ self new initializeTitled: aTitle
]

{ #category : 'adding' }
TLLayer >> addEventTitled: aTitle on: aDate [

  events add: ( TLEvent titled: aTitle at: aDate )
]

{ #category : 'adding' }
TLLayer >> addProcessTitled: aTitle from: aBeginDate to: anEndDate [

  processes add: ( TLProcess titled: aTitle from: aBeginDate to: anEndDate )
]

{ #category : 'adding' }
TLLayer >> events [

  ^ events
]

{ #category : 'initialization' }
TLLayer >> initializeTitled: aTitle [

  title := aTitle.
  processes := OrderedCollection new.
  events := OrderedCollection new
]

{ #category : 'adding' }
TLLayer >> processes [

  ^ processes
]

{ #category : 'adding' }
TLLayer >> searchEventsForTitle: aTitle [

  ^ events select: [ :event | event title = aTitle ]
]

{ #category : 'adding' }
TLLayer >> searchProcessesForTitle: aTitle [

  ^ processes select: [ :process | process title = aTitle ]
]

{ #category : 'initialization' }
TLLayer >> title [

  ^ title
]
