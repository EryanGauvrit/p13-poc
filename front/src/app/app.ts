import { CommonModule } from '@angular/common';
import { Component, OnInit } from '@angular/core';
import {
  FormBuilder,
  FormsModule,
  ReactiveFormsModule,
  Validators,
} from '@angular/forms';
import { ChatService, Message } from './services/chat.service';

@Component({
  selector: 'app-root',
  imports: [FormsModule, CommonModule, ReactiveFormsModule],
  templateUrl: './app.html',
})
export class App implements OnInit {
  messages: Message[] = [];
  form: ReturnType<FormBuilder['group']>;

  constructor(private chatService: ChatService, private fb: FormBuilder) {
    this.form = this.fb.group({
      name: ['', [Validators.required]],
      message: ['', [Validators.required]],
    });
  }
  ngOnInit(): void {
    this.chatService.messages$.subscribe((msg) => {
      if (msg) this.messages.push(msg);
    });
  }

  send() {
    if (this.form.valid) {
      const { name, message } = this.form.value;
      this.chatService.sendMessage({
        sender: name,
        content: message,
      });
      this.form.reset();
    }
  }
}
