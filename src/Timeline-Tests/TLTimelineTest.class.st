Class {
	#name : 'TLTimelineTest',
	#superclass : 'TestCase',
	#category : 'Timeline-Tests',
	#package : 'Timeline-Tests'
}

{ #category : 'running' }
TLTimelineTest >> setUp [

  super setUp
]

{ #category : 'running' }
TLTimelineTest >> testAddEventToLayer [

  | timeline layer date events |
  timeline := TLTimeline titled: 'Línea de tiempo Universal'.
  timeline addLayerTitled: 'Historia Social'.
  layer := timeline layers first.

  date := March third , 1995.
  layer addEventTitled: 'Huelga general' on: date.

  events := layer searchEventsForTitle: 'Huelga general'.

  self
    assert: events size equals: 1;
    assert: events first title equals: 'Huelga general';
    assert: events first date equals: date
]

{ #category : 'running' }
TLTimelineTest >> testCreateGeneralTimeline [

  | timeline layer process |
  timeline := TLTimeline titled: 'Línea de tiempo Universal'.
  self
    assert: timeline layers size equals: 0;
    assert: timeline title equals: 'Línea de tiempo Universal'.

  timeline addLayerTitled: 'Historia Social'.
  layer := timeline searchLayerForTitle: 'Historia Social'.
  self
    assert: timeline layers size equals: 1;
    assert: layer first title equals: 'Historia Social'.

  layer first
    addProcessTitled: 'Neoliberalismo'
    from: January first , 1990
    to: December twentieth , 2001.
  process := layer first searchProcessesForTitle: 'Neoliberalismo'.
  self
    assert: process first title equals: 'Neoliberalismo';
    assert: process first beginDate equals: January first , 1990;
    assert: process first endDate equals: December twentieth , 2001
]
