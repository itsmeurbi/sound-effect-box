document.addEventListener("turbolinks:load", () => {
  console.log("wcouwec")  
  const images = document.querySelectorAll("img")
  images.forEach((node) => setupClickListenner(node))
})


function setupClickListenner(node) {
    node.addEventListener("click", () => {
        const soundId = node.getAttribute("data-sound-id")
        const sound = document.getElementById(soundId)
        const audioContext = new AudioContext();
        const source = audioContext.createMediaElementSource(sound);
        source.connect(audioContext.destination)
        sound.play();
    })
}