import { bootstrap } from "angular2/platform/browser";
import {Component} from "angular2/core";

@Component( {
selector:'hello-world',
template:`
<form class="ui large form segment">
    <input name="title">
</form>
`
})
class HelloWorld{
    constructor(){
    }
}
bootstrap(HelloWorld);
