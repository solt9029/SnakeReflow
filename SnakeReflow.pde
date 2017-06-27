import java.awt.event.ComponentAdapter;
import java.awt.event.ComponentEvent;

void setup() {
  size(450,450);
  frame.setResizable(true);
  frame.addComponentListener(new ComponentAdapter() {
    public void componentResized(ComponentEvent e) {
      if (e.getSource()==frame) {
        redraw();
      }
    }
  });
}

void draw() {
  background(255);
  
  int x_num=1;
  if(floor(width/110)>0){
    x_num=floor(width/110);
  }
  
  int x_dist=10;
  if(x_num-1>0){
    x_dist=(width-20-100*x_num)/(x_num-1);
  }
  
  int y_num=floor(16/x_num)+1;
  
  int draw_num=0;
  
  
  
  for(int y=0; y<y_num; y++){
    if(draw_num>=16)break;
    if(y%2==0){
      for(int x=0; x<x_num; x++){
        if(draw_num>=16)break;
        fill(255);
        rect(10+x*(100+x_dist),10+y*(100+10),100,100);
        fill(0);
        textSize(30);
        text(draw_num,15+x*(100+x_dist),30+y*(100+10)+10);
        draw_num++;
      }
    }else{
      for(int x=x_num-1; x>=0; x--){
        if(draw_num>=16)break;
        fill(255);
        rect(10+x*(100+x_dist),10+y*(100+10),100,100);
        fill(0);
        textSize(30);
        text(draw_num,15+x*(100+x_dist),30+y*(100+10)+10);
        draw_num++;
      }
    }
  }
}