# Reqired: Mustache.js

class HamClickbaitGenerator
  INDIVIDUALS = ['Old Man Ham', 'M3', 'M6', 'G0', 'G1', 'G2', 'G3', 'G4', 'G5', 'G6', 'G7', 'G8', 'M0', 'M1', 'M5', '2E0', '2E1', 'Maritime Mobile Operator', 'Master of a Vessel', 'Person authorised by Ofcom', 'Unattended Beacon', 'Radio Club', 'Special Event Operator', 'New Licensee', 'Overseas Ham', 'Foundation Licence Holder', 'Intermediate Licence Holder', 'Full Licence Holder', 'Young Ham', 'Female Operator']
  GROUPS = ['Old Man Hams', 'M3s', 'M6s', 'G0s', 'G1s', 'G2s', 'G3s', 'G4s', 'G5s', 'G6s', 'G7s', 'G8s', 'M0s', 'M1s', 'M5s', '2E0s', '2E1s', 'Maritime Mobile Operators', 'Masters of a Vessel', 'Persons authorised by Ofcom', 'Unattended Beacons', 'Radio Clubs', 'Special Event Operators', 'New Licensees', 'Overseas Hams', 'Foundation Licence Holders', 'Intermediate Licence Holders', 'Full Licence Holders', 'Young Hams', 'Female Operators']
  EVENTS = ['a contest', 'a pileup', 'a council hearing', 'a field day', 'the AGM', 'a registered Foundation course']
  ACTIVITIES = ['work {{event}}', 'set up a transmitter', 'slap a {{individual}}']
  TEMPLATES = ['{{quantity}} things {{group}} do to avoid {{event}}!', '{{quantity}} {{group}} that haven\'t aged well.', 'This {{individual}} took part in {{event}}. What happened next will amaze you!', 'Watch this {{individual}} {{activity}}. First you\'ll be shocked, then you\'ll be inspired.', 'He worked {{event}} and {{quantity}} {{group}} turned it into {{event}}.']

  randomElement: (elements) ->
    elements[Math.floor(Math.random() * elements.length)];

  interpolate: (template) ->
    Mustache.render template, this

  quantity: -> Math.floor(Math.random() * 77) + 1
  individual: -> this.randomElement INDIVIDUALS
  group: -> this.randomElement GROUPS
  event: -> this.randomElement EVENTS
  activity: -> this.interpolate this.randomElement(ACTIVITIES)

  title: ->
    this.interpolate this.randomElement(TEMPLATES), this
