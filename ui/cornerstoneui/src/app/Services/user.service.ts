import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { User } from '../Interfaces/user';
import { map, Observable } from 'rxjs';

@Injectable({
  providedIn: 'root'
})
export class UserService {
  private api = 'https://localhost:7200/User'
  constructor(private http: HttpClient) { }
  getUserList(): Observable<User[]>{
    var data = this.http.get<User[]>(this.api);
    return data;
  }
}

