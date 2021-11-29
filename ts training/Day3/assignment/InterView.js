"use strict";
exports.__esModule = true;
exports.InterviewResult = exports.InterviewSchedule = exports.scheduledInterviews = void 0;
exports.scheduledInterviews = [];
var InterviewSchedule = /** @class */ (function () {
    function InterviewSchedule(id, vacancyId, applicantId, date, location) {
        this.id = id;
        this.vacancyId = vacancyId;
        this.applicantId = applicantId;
        this.date = date;
        this.location = location;
    }
    InterviewSchedule.prototype.insertData = function () {
        var data = {
            id: this.id,
            vacancyId: this.vacancyId,
            applicantId: this.applicantId,
            date: this.date,
            location: this.location
        };
        exports.scheduledInterviews.push(data);
    };
    return InterviewSchedule;
}());
exports.InterviewSchedule = InterviewSchedule;
var InterviewResult = /** @class */ (function () {
    function InterviewResult(interviewId, vacancyId, applicantId, result) {
        this.interviewId = interviewId;
        this.vacancyId = vacancyId;
        this.applicantId = applicantId;
        this.result = result;
    }
    InterviewResult.prototype.insertData = function () {
        var data = {
            interviewId: this.interviewId,
            vacancyId: this.vacancyId,
            applicantId: this.applicantId,
            result: this.result
        };
        exports.scheduledInterviews.push(data);
    };
    return InterviewResult;
}());
exports.InterviewResult = InterviewResult;
