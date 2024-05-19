import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { Observable, of } from 'rxjs';
import { map } from 'rxjs/operators';
import { Components } from '../interfaces/components';

@Injectable({
  providedIn: 'root'
})
export class ComponentService {
  private apiUrl = 'http://localhost:3000/api/componentes';

  constructor(private http: HttpClient) { }

  getAllComponents(): Observable<Components[]> {
    return this.http.get<Components[]>(this.apiUrl);
  }

  getComponentsByType(tipo: string): Observable<Components[]> {
    return this.http.get<Components[]>(this.apiUrl).pipe(
      map(components => components.filter(component => component.tipo === tipo))
    );
  }
}
