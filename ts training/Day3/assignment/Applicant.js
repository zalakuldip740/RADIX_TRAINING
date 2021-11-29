"use strict";
exports.__esModule = true;
exports.Applicant = exports.applicant = void 0;
exports.applicant = [];
var Applicant = /** @class */ (function () {
    function Applicant(id, name, graduation, expectedCtc, location, vacancyId) {
        this.id = id;
        this.name = name;
        this.graduation = graduation;
        this.expectedCtc = expectedCtc;
        this.location = location;
        this.vacancyId = vacancyId;
    }
    Applicant.prototype.insertData = function () {
        var data = {
            id: this.id,
            name: this.name,
            graduation: this.graduation,
            expectedCtc: this.expectedCtc,
            location: this.location,
            vacancyId: this.vacancyId
        };
        exports.applicant.push(data);
    };
    return Applicant;
}());
exports.Applicant = Applicant;
