<template>
    <div class="content">
        <img class="logo" src="../assets/logo.ico">
        <h1>Sign Up</h1>
        <div class="register">
            <input class="input" type="text" v-model="name" placeholder="Name">
            <input class="input" type="text" v-model="username" placeholder="Username"> 
            <input class="input" type="email" v-model="email" placeholder="Email">
            <input class="input" type="password" v-model="password" placeholder="Password">
            <span class="check"><input type="checkbox"> I agree to the Terms & Conditions</span>
            <button type="submit" v-on:click="signup">Create my account</button>
            <a v-on:click="signin">signin</a>
        </div>
    </div>

    <!--- background part --->
    <div class="gradient-bg">
        <div class="gradients-container">
        <div class="g1"></div>
        <div class="g2"></div>
        <div class="g3"></div>
        <div class="g4"></div>
        <div class="g5"></div>
        <div class="interactive"></div>
        </div>
    </div>
</template>
<script>
import axios from 'axios'
export default {
    name: 'signup',
    mounted() {
        const interBubble = this.$el.querySelector('.interactive');
        let curX = 0;
        let curY = 0;
        let tgX = 0;
        let tgY = 0;

        function move() {
        curX += (tgX - curX) / 20;
        curY += (tgY - curY) / 20;
        interBubble.style.transform = `translate(${Math.round(curX)}px, ${Math.round(curY)}px)`;
        requestAnimationFrame(move);
        }

        window.addEventListener('mousemove', (event) => {
        tgX = event.clientX;
        tgY = event.clientY;
        });

        move();
    },
    data(){
        return {
            name:'',
            username:'',
            email:'',
            password:''
        }
    },
    methods:{
        async signup(){
            let result = await axios.post("http://localhost:3000/user",{
                name: this.name,
                username: this.username,
                email: this.email,
                password: this.password
            });

            console.warn(result);
            if(result.status==201){
                alert("signup done");
                localStorage.setItem("user-info",JSON.stringify(result.data))
                this.$router.push({name:'home'}).then(() => {
                    window.location.reload();
                })
            }
        },
        signin(){
            this.$router.push({name:'signin'}).then(() =>{
                window.location.reload();
            });
        }
    },
}


</script>
<style>
@import '../assets/signup.css';
.logo{
    width: 100px;
}
</style>
