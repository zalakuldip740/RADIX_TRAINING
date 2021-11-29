export let Vac = [];

export class Vacancy {
    id: number;
    position: string;
    department: string
    ctc: number;
    vacancyStatus: string
    constructor(id, position, department, ctc, vacancyStatus) {
        this.id = id;
        this.position = position;
        this.department = department;
        this.ctc = ctc;
        this.vacancyStatus = vacancyStatus;

    }
    insertData() {
        let vacancy = {
            id: this.id,
            position: this.position,
            department: this.department,
            ctc: this.ctc,
            vacancyStatus: this.vacancyStatus
        }
        Vac.push(vacancy)
    }
}