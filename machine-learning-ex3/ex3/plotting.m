function plotting(X,y)
    X=[X y];
    class0=find(y==10);class1=find(y==1);class2=find(y==2);class3=find(y==3);class4=find(y==4);class5=find(y==5);class6=find(y==6);class7=find(y==7);class8=find(y==8);class9=find(y==9);
    i=1
   for x=1:(i+2):400
    plot(X(class0,i),X(class0,(i+1)),'ko','MarkerFaceColor','y','Markersize',7);
    plot(X(class1,i),X(class1,(i+1)),'r.','Markersize',7);
    plot(X(class2,i),X(class2,(i+1)),'r.','Markersize',7);
    plot(X(class3,i),X(class3,(i+1)),'r.','Markersize',7);
    plot(X(class4,i),X(class4,(i+1)),'r.','Markersize',7);
    plot(X(class5,i),X(class5,(i+1)),'r.','Markersize',7);
    plot(X(class6,i),X(class6,(i+1)),'r.','Markersize',7);
    plot(X(class7,i),X(class7,(i+1)),'r.','Markersize',7);
    plot(X(class8,i),X(class8,(i+1)),'r.','Markersize',7);
    plot(X(class9,i),X(class9,(i+1)),'r.','Markersize',7);
   end
end