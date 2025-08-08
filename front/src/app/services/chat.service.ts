import { Injectable } from '@angular/core';
import { Client, IMessage } from '@stomp/stompjs';
import { BehaviorSubject } from 'rxjs';
import SockJS from 'sockjs-client';

export interface Message {
  sender: string;
  content: string;
}

@Injectable({
  providedIn: 'root',
})
export class ChatService {
  private stompClient: Client;
  private messageSubject = new BehaviorSubject<Message | null>(null);
  public messages$ = this.messageSubject.asObservable();

  constructor() {
    this.stompClient = new Client({
      webSocketFactory: () => new SockJS('http://localhost:8080/ws'),
      reconnectDelay: 5000,
    });
    this.stompClient.onConnect = () => {
      this.stompClient.subscribe('/topic/messages', (message: IMessage) => {
        const body: Message = JSON.parse(message.body);
        this.messageSubject.next(body);
      });
    };

    this.stompClient.activate();
  }

  sendMessage(msg: Message): void {
    this.stompClient.publish({
      destination: '/app/chat',
      body: JSON.stringify(msg),
    });
  }
}
