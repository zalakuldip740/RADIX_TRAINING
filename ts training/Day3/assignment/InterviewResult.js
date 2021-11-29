"use strict";
exports.__esModule = true;
exports.Result = exports.res = void 0;
exports.res = [];
var Result = /** @class */ (function () {
    function Result(applicantId, result, vacancyId) {
        this.applicantId = applicantId;
        this.result = result;
        this.vacancyId = vacancyId;
    }
    Result.prototype.insertData = function () {
        var data = {
            applicantId: this.applicantId,
            result: this.result,
            vacancyID: this.vacancyId
        };
        exports.res.push(data);
    };
    return Result;
}());
exports.Result = Result;
