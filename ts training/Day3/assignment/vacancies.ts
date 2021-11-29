interface IVacancies{
    setNumberOfVacancies(seat:number);
    getVacanciesSeat();
}

export class Vacancies implements IVacancies{
    seats:number;
    setNumberOfVacancies(seat)
    {
        this.seats=seat;
    }

    getVacanciesSeat(){
        console.log(this.seats);
    }

}