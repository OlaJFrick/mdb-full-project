import {Pipe, PipeTransform} from '@angular/core';

@Pipe({name: 'date'})
export class DatePipe implements PipeTransform {

  addZeroes(v: number): string {
    if (v < 10) { return '0' + v; }
    return String(v);
  }

  transform(value: string, args: string[]): any {
    if (!value) { return value; }
    const d = new Date(value);

    const yr = String(d.getFullYear());
    const mm = this.addZeroes(d.getMonth());
    const dd = this.addZeroes(d.getMonth());
    const div = '-';

    return new Array(yr, div, mm, div, dd).join('');
  }
}

// Usage example, to make escape chars work
// <p [innerHTML]="(object.area | date)" ></p>
