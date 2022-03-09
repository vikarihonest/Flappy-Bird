require "import"
import "android.app.*"
import "android.os.*"
import "android.widget.*"
import "android.view.*"
activity.setContentView(loadlayout({
  LinearLayout;
  layout_height="fill";
  layout_width="fill";
  background="map.jpg";
  id="jm";
  {
    ImageView;
    layout_height="300dp";
    layout_width="30dp";
    id="p1";
    background="s2.png";
    translationY="150";
  },
  {
    ImageView;
    layout_height="300dp";
    layout_width="30dp";
    id="p2";
    background="s1.png";
    translationY="550";
  },
  {
    ImageView;
    layout_height="50dp";
    layout_width="50dp";
    id="p3";
  },
}))

function f()
  require("import")
  while activity.get("Endt") ~= true do
    Thread.sleep(10)
    call("c")
  end end
f1=10
--/block
e1=600
e2=900
function c()
  e1=e1-2
  e2=e2-2
  f1=f1+6
  if e1<=200 and e1 >= 80 and f1 <= 730 then
    Endt=true
    print("k.o")
  end
  if e2<=100 and e2 >= 20 and f1 >= 500 then
    Endt=true
    print("k.o")
  end
  if e1 <= -10 then
    e1 = 670
  end
  if e2 <= -80 then
    e2 = 600
  end
  p1.setTranslationX(e1)
  p2.setTranslationX(e2)
  p3.setTranslationY(f1)
end
thread(f)
p3.setImageBitmap(loadbitmap("1.png"))
jm.onTouch=function(event,c)
  a = c.getAction()
  switch a
   case MotionEvent.ACTION_DOWN
    p3.setImageBitmap(loadbitmap("2.png"))
    f1=f1-50
   case MotionEvent.ACTION_UP
    f1=f1-100
    p3.setImageBitmap(loadbitmap("1.png"))
    if f1 <= -500 then
      Endt=true
    end
  end
  return true
end





