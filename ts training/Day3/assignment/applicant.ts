export let applicant = [];

interface ApplicantData {
    id: number;
    name: string;
    graduation: string;
    expectedCtc: number;
    location: string;
    vacancyId: number;
    insertData: () => void
}

export class Applicant implements ApplicantData {
    id: number;
    name: string;
    graduation: string;
    expectedCtc: number;
    location: string;
    vacancyId: number;
    constructor(id: number, name: string, graduation: string, expectedCtc: number, location: string, vacancyId: number) {
        this.id = id;
        this.name = name;
        this.graduation = graduation;
        this.expectedCtc = expectedCtc;
        this.location = location;
        this.vacancyId = vacancyId
    }
    insertData() {
        let data = {
            id: this.id,
            name: this.name,
            graduation: this.graduation,
            expectedCtc: this.expectedCtc,
            location: this.location,
            vacancyId: this.vacancyId
        }
        applicant.push(data)
    }

}