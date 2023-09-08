/* JavaScript */
Vue.component('login', {
  template: `
    <form class="loginForm form">
      <div class="field">
        <label class="label">Email</label>
        <div class="control">
          <input class="input"/>
        </div>
      </div>
      <div class="field">
        <label class="label">Password</label>
        <div class="control">
          <input class="input" type="password"/>
        </div>
      </div>
      <div class="field">
        <div class="control is-expanded">
          <input type="submit" class="button is-danger is-fullwidth" value="Sign in" @click.prevent/>
        </div>
      </div>
    </form>
  `
});

Vue.component('signUp', {
  template: `
    <form class="form">
      <div class="field">
        <label class="label">Email</label>
        <div class="control">
          <input class="input"/>
        </div>
      </div>
      <div class="field">
        <label class="label">Password</label>
        <div class="control">
          <input class="input" type="password"/>
        </div>
      </div>
      <div class="field">
        <label class="label">Confirm Password</label>
        <div class="control">
          <input class="input" type="password"/>
        </div>
      </div>
      <div class="field">
        <div class="control is-expanded">
          <input type="submit" class="button is-danger is-fullwidth" value="Register" @click.prevent/>
        </div>
      </div>
    </form>
  `
});

Vue.component('signUpText', {
  template: `
    <article class="notification is-danger is-bold">
      <p class="title">
        New ?
      </p>
      <div class="subtitle">
        <br>Not a member already?<br/><br/><br/><br/><br/>
        <a class="button is-danger is-rounded is-inverted" @click.stop="$emit('show-sign-up')">Sign Up</a>
      </div>
    </article>
  `
});

Vue.component('loginText', {
  template: `
    <article class="notification is-danger is-bold">
      <p class="title">
        Members !
      </p>
      <div class="subtitle">
        <br/> Are you already registered?
        <br/><br/><br/><br/><br/>
        <a class="button is-danger is-rounded is-inverted" @click.stop="$emit('show-login')">Sign In</a>
      </div>
    </article>
  `
});

const app = new Vue({
  el: '#app',
  data() {
    return {
      msg: 'Welcome',
      compOne: 'login',
      compTwo: 'sign-up-text'
    }
  },
  methods: {
    showLogin() {
      this.compOne = 'login';
      this.compTwo = 'sign-up-text';
    },
    showSignUp() {
      this.compOne = 'login-text';
      this.compTwo = 'sign-up';
    }
  }
});

const toogle=document.querySelector('.toogle')
const card_front=document.querySelector('.card-front')
const card_back=document.querySelector('.card-back')
toogle.addEventListener("click",()=>{
	card_front.classList.toggle('visible')
	card_front.classList.toggle('visible2')
})