import { Component } from '@angular/core';
import { User } from '../../Interfaces/user';
import { UserService } from '../../Services/user.service';
import { NgFor, NgForOf } from '@angular/common';

@Component({
  selector: 'app-user-list',
  imports: [],
  templateUrl: './user-list.component.html',
  styleUrl: './user-list.component.css'
})
export class UserListComponent {
  users: User[] = [];

  constructor(private userService: UserService) {}
  ngOnInit(): void {
    //Called after the constructor, initializing input properties, and the first call to ngOnChanges.
    //Add 'implements OnInit' to the class.
    this.userService.getUserList().subscribe(u=> this.users = u);
    console.log(this.users);
  }
}
