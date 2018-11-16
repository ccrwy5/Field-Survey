//
//  FieldEvent.swift
//  Field Survey
//
//  Created by Chris Rehagen on 11/15/18.
//  Copyright © 2018 Chris Rehagen. All rights reserved.
//

import Foundation

struct FieldEvent{
    let survey: Survey
    let type: String
    let description: String
    let date: Date
    
    init(survey: Survey, type: String, description: String, date: Date){
        self.survey = survey
        self.type = type
        self.description = description
        self.date = date
    }
    
    init?(surveyName: String, type: String, description: String, date: Date){
        if let survey = Survey(rawValue: surveyName) {
            self.init(survey: survey, type: type, description: description, date: date)
        } else {
            return nil
        }
    }    
}
