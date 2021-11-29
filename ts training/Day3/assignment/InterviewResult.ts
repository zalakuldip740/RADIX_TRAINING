export let res = [];

export class Result {
    applicantId: number;
    result: string;
    vacancyId: number
    constructor(applicantId, result, vacancyId) {
        this.applicantId = applicantId;
        this.result = result;
        this.vacancyId = vacancyId;

    }
    insertData() {
        let data = {
            applicantId: this.applicantId,
            result: this.result,
            vacancyID: this.vacancyId
        }
        res.push(data)
    }
}