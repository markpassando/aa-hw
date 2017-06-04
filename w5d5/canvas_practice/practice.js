document.addEventListener("DOMContentLoaded", function(){
  var canvas = document.getElementById('mycanvas');
  var ctx = canvas.getContext('2d');
  ctx.fillStyle = 'rgb(200,0,0)';
  ctx.fillRect(10, 10, 55, 99);

  var canvasTwo = document.getElementById('canvas-two');
  var ctxTwo = canvasTwo.getContext('2d');

  ctxTwo.beginPath();
  ctxTwo.arc(75, 75, 50, 0, 2 * Math.PI);
  ctxTwo.strokeStyle = 'purple';
  ctxTwo.lineWidth = 15;
  ctxTwo.fillStyle = 'red';
  ctxTwo.fill();
  ctxTwo.stroke();

  var canvasThree = document.getElementById('canvas-three');
  var ctxThree = canvasThree.getContext('2d');

  ctxThree.beginPath();
  ctxThree.moveTo(75, 90);
  ctxThree.lineTo(150, 75);
  ctxThree.lineTo(120, 25);
  ctxThree.fill();
});
