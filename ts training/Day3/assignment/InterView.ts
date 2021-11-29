export let scheduledInterviews = [];

export class InterviewSchedule {
    id: number;
    vacancyId: number;
    applicantId: number;
    date: string;
    location: string;
    constructor(id, vacancyId: number, applicantId: number, date: string, location: string) {
        this.id = id;
        this.vacancyId = vacancyId;
        this.applicantId = applicantId;
        this.date = date;
        this.location = location;
    }
    insertData() {
        let data = {
            id: this.id,
            vacancyId: this.vacancyId,
            applicantId: this.applicantId,
            date: this.date,
            location: this.location
        }
        scheduledInterviews.push(data)
    }
}

export class InterviewResult {
    interviewId: number;
    vacancyId: number;
    applicantId: number;
    result: string
    constructor(interviewId: number, vacancyId: number, applicantId: number, result: string) {
        this.interviewId = interviewId;
        this.vacancyId = vacancyId;
        this.applicantId = applicantId;
        this.result = result;
    }
    insertData() {
        let data = {
            interviewId: this.interviewId,
            vacancyId: this.vacancyId,
            applicantId: this.applicantId,
            result: this.result
        }
        scheduledInterviews.push(data)
    }
}