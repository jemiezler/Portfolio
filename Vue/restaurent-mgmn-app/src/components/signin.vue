<template>
    <div class="content">
        <img class="logo" src="../assets/logo.ico">
        <h1>Sign In</h1>
        <div class="register">
            <input class="input" type="text" placeholder="Username"> 
            <input class="input" type="password" placeholder="Password">
            <button v-on:click="signin">Sign In</button>
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
import axios from 'axios';
export default {
    name: 'signin',
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
        return{
            email:'',
            password:''
        }
    },
    methods:{
        async signin(){
            let result = await axios.get(
                `http://localhost:3000/user?email=${this.email}&password=${this.password}`
            )

            if (result.status == 200 && result.data.length>0){
                localStorage.setItem("user-info",JSON.stringify(result.data[0]))
                this.$router.push({name:'home'}).then(() => {
                    window.location.reload();
                })
            }
        }
    }
}
</script>
<style>
@import '../assets/signup.css';
.logo{
    width: 100px;
}
    
</style>