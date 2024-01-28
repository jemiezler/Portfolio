<template>
    <div class="content">
        <img class="logo" src="../assets/logo.ico">
        <h1>Sign Up</h1>
        <div class="register">
            <div class="half">
                <input type="text" placeholder="Name">
                <input type="text" placeholder="Family-Name"> 
            </div>
            <input type="email" placeholder="Email">
            <input type="password" placeholder="Password">
            <input type="checkbox"> I agree to the Terms & Conditions
            <button type="submit">Create my account</button>
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
    }
}
</script>
<style>

.logo{
    width: 100px;
}
    
</style>