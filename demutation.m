function V=demutation(X,bestX,F,q,n,VarRange,popm)
[NP,y]=size(X);
VarRange=VarRange';
    VarMin=min(VarRange);
    VarMax=max(VarRange);
for i=1:popm%nCrossover/2 ����
  nrandI=2;%������������r1,r2
    r=randi([1,NP],1,nrandI);%��1��������֮�����1*2������3 4
     for j=1:nrandI
    equalr(j)=sum(r==r(j));%��ӣ�����1����2,1�������1�����������2
    end
    equali=sum(r==i);%����1����0�����Ϊ1�������Ϊ0
    equalval=sum(equalr)+equali;
    while(equalval>nrandI)%ֻ��2+0�ſ��Բ�����ѭ��
        r=randi([1,NP],1,nrandI);
        for j=1:nrandI
        equalr(j)=sum(r==r(j));
        end
        equali=sum(r==i);
        equalval=sum(equalr)+equali;
    end
     V(i,:)=(1-q)*bestX+q*X(i,:)+F*(X(r(1),:)-X(r(2),:));
     for j=1:n%%%%%%
     V(i,j)=min(max( V(i,j),VarMin(j)),VarMax(j));
     end
end