import { Component } from '@angular/core';
import { FormControl, FormGroup, FormsModule, ReactiveFormsModule } from '@angular/forms';
import { User } from '../../Interfaces/user';

@Component({
  selector: 'app-user-form',
  imports: [ReactiveFormsModule],
  templateUrl: './user-form.component.html',
  styleUrl: './user-form.component.css'
})
export class UserFormComponent {
  private user:User ={birthdate :"",email:"",firstname:"",lastname:""};
  form= new FormGroup(
    {
      firstname: new FormControl(''),
      lastname: new FormControl(''),
      birthdate: new FormControl(''),
      email: new FormControl('')
    }
  );
  onSubmit(){
    alert(this.form.value.firstname + '|' +this.form.value.lastname + '|' +this.form.value.birthdate + '|' +this.form.value.email + 'will be submitted'
    )
  }
}
