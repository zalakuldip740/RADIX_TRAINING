"use strict";
exports.__esModule = true;
exports.Vacancy = exports.Vac = void 0;
exports.Vac = [];
var Vacancy = /** @class */ (function () {
    function Vacancy(id, position, department, ctc, vacancyStatus) {
        this.id = id;
        this.position = position;
        this.department = department;
        this.ctc = ctc;
        this.vacancyStatus = vacancyStatus;
    }
    Vacancy.prototype.insertData = function () {
        var vacancy = {
            id: this.id,
            position: this.position,
            department: this.department,
            ctc: this.ctc,
            vacancyStatus: this.vacancyStatus
        };
        exports.Vac.push(vacancy);
    };
    return Vacancy;
}());
exports.Vacancy = Vacancy;
