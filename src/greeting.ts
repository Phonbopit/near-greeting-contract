import { NearBindgen, near, call, view } from 'near-sdk-js'

interface IMessage {
  message: string
}

@NearBindgen({})
class Greeting {
  message: string = 'Ahoy!'

  @view({})
  getMessage(): string {
    return this.message
  }

  @call({})
  setMessage({ message }: IMessage): void {
    near.log(`Saving message ${message}`)
    this.message = message
  }
}
