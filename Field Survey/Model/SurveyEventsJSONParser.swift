//
//  SurveyEventsJSONParser.swift
//  Field Survey
//
//  Created by Chris Rehagen on 11/15/18.
//  Copyright © 2018 Chris Rehagen. All rights reserved.
//

import Foundation

class SurveyEventJSONParser {
    
    static let dateFormatter = DateFormatter()
    
    class func parse(_ data: Data) -> [Survey] {
        var survey = [Survey]()
        dateFormatter.dateFormat = "YYYY-MM-dd HH:mm"
        
        if let json = try? JSONSerialization.jsonObject(with: data, options: []),
        let root = json as? [String: Any],
        let status = root["status"] as? String,
            status == "ok" {
            
            
        if let events = root["events"] as? [Any] {
            for event in events {
                if let event = event as? [String: String] {
                    if let surveyName = event["survey"],
                        let type  = event["type"],
                        let description = event["description"],
                        let dateString = event["date"],
                        let date = dateFormatter.date(from: dateString) {
                        
                        if let survey = Survey(surveyName: surveyName, type: type, description: description, date: date){
                            survey.append(survey)
                            }
                        }
                    }
                }
            }
        }
        return survey
    }
}
