Class {
	#name : 'TLTimeline',
	#superclass : 'Object',
	#instVars : [
		'layers',
		'timeLineTitle'
	],
	#category : 'Timeline-Model',
	#package : 'Timeline-Model'
}

{ #category : 'instance creation' }
TLTimeline class >> titled: aTitle [

  ^ self new initializeTitled: aTitle
]

{ #category : 'initialization' }
TLTimeline >> addLayerTitled: aTitle [

  layers add: ( TLLayer titled: aTitle )
]

{ #category : 'initialization' }
TLTimeline >> initializeTitled: aTitle [

  timeLineTitle := aTitle.
  layers := OrderedCollection new
]

{ #category : 'initialization' }
TLTimeline >> layers [

  ^ layers
]

{ #category : 'initialization' }
TLTimeline >> searchLayerForTitle: aTitle [

  ^ layers select: [ :layer | layer title = aTitle ]
]

{ #category : 'accessing' }
TLTimeline >> title [

  ^ timeLineTitle
]
