CREATE TRIGGER trigger3
   ON  tbKPI
   INSTEAD OF insert
AS 
declare @A nvarchar(100)
declare @B FLOAT
declare @C nvarchar(255)
declare @D nvarchar(255)
declare @E NVARCHAR(100)
declare @F FLOAT
declare @G FLOAT
declare @H FLOAT
declare @I FLOAT
declare @J FLOAT
declare @K FLOAT
declare @L FLOAT
declare @M FLOAT
declare @N FLOAT
declare @O FLOAT
declare @P FLOAT
declare @Q FLOAT
declare @R FLOAT
declare @S FLOAT
declare @T FLOAT
declare @U FLOAT
declare @V FLOAT
declare @W FLOAT
declare @X FLOAT
declare @Y FLOAT
declare @Z FLOAT
declare @AA FLOAT
declare @AB FLOAT
declare @AC FLOAT
declare @AD FLOAT
declare @AE FLOAT
declare @AF FLOAT
declare @AG FLOAT
declare @AH FLOAT
declare @AI FLOAT
declare @AJ FLOAT
declare @AK FLOAT
declare @AL FLOAT
declare @AM FLOAT
declare @AN FLOAT
declare @AO FLOAT
declare @AP FLOAT



select @A =��ʼʱ��, @B =����,@C=��Ԫ����, @D=��վ,@E=С��, @F =[RRC���ӽ�����ɴ��� (��)], @G =[RRC������������������ط��� (��)],@H =[RRC�����ɹ���qf (%)],@I =[E-RAB�����ɹ��ܴ��� (��)],@J =[E-RAB���������ܴ��� (��)],@K =[E-RAB�����ɹ���2 (%)],@L =[eNodeB������E-RAB�쳣�ͷ��ܴ��� (��)],@M =[С���л���E-RAB�쳣�ͷ��ܴ��� (��)],@N =[E-RAB������(��) (%)],@O =[���߽�ͨ��ay (%)],@P =[eNodeB�����S1 RESET���µ�UE Context�ͷŴ��� (��)],@Q =[UE Context�쳣�ͷŴ��� (��)],@R =[UE Context�����ɹ��ܴ��� (��)],@S =[���ߵ����� (%)],@T =[eNodeB����Ƶ�л����ɹ����� (��)],@U =[eNodeB����Ƶ�л������Դ��� (��)],@V =[eNodeB��ͬƵ�л����ɹ����� (��)],@W =[eNodeB��ͬƵ�л������Դ��� (��)],@X =[eNodeB����Ƶ�л����ɹ����� (��)],@Y =[eNodeB����Ƶ�л������Դ��� (��)],@Z =[eNodeB��ͬƵ�л����ɹ����� (��)],@AA =[eNodeB��ͬƵ�л������Դ��� (��)],@AB =[eNB���л��ɹ��� (%)],@AC =[eNB���л��ɹ��� (%)],@AD =[ͬƵ�л��ɹ���zsp (%)],@AE =[��Ƶ�л��ɹ���zsp (%)],@AF =[�л��ɹ��� (%)],@AG =[С��PDCP�������յ����������ݵ��������� (����)],@AH =[С��PDCP�������͵��������ݵ��������� (����)],@AI =[RRC�ؽ�������� (��)],@AJ =[RRC�����ؽ����� (%)],@AK = [ͨ���ؽ���ԴС����eNodeB��ͬƵ�л���ִ�гɹ����� (��)],@AL =[ͨ���ؽ���ԴС����eNodeB����Ƶ�л���ִ�гɹ����� (��)], @AM =[ͨ���ؽ���ԴС����eNodeB��ͬƵ�л���ִ�гɹ����� (��)],  @AN =[ͨ���ؽ���ԴС����eNodeB����Ƶ�л���ִ�гɹ����� (��)],@AO =[eNB���л����ɹ����� (��)],@AP =[eNB���л���������� (��)] from inserted
if((select count(*) from tbKPI where ��ʼʱ��=@A AND С��=@E )>0)
begin

       UPDATE tbKPI SET ��ʼʱ�� = @A ,���� =@B,��Ԫ���� = @C,��վ =@D,С�� = @E,[RRC���ӽ�����ɴ��� (��)] = @F,[RRC������������������ط��� (��)] =@G,[RRC�����ɹ���qf (%)] =@H,[E-RAB�����ɹ��ܴ��� (��)] =@I,[E-RAB���������ܴ��� (��)] =@J,[E-RAB�����ɹ���2 (%)] =@K,[eNodeB������E-RAB�쳣�ͷ��ܴ��� (��)] =@L,[С���л���E-RAB�쳣�ͷ��ܴ��� (��)] =@M,[E-RAB������(��) (%)] =@N,[���߽�ͨ��ay (%)] =@O,[eNodeB�����S1 RESET���µ�UE Context�ͷŴ��� (��)] =@P,[UE Context�쳣�ͷŴ��� (��)] =@Q,[UE Context�����ɹ��ܴ��� (��)] =@R,[���ߵ����� (%)] =@S,[eNodeB����Ƶ�л����ɹ����� (��)] =@T,[eNodeB����Ƶ�л������Դ��� (��)] =@U,[eNodeB��ͬƵ�л����ɹ����� (��)] =@V,[eNodeB��ͬƵ�л������Դ��� (��)] =@W,[eNodeB����Ƶ�л����ɹ����� (��)] =@X,[eNodeB����Ƶ�л������Դ��� (��)] =@Y,[eNodeB��ͬƵ�л����ɹ����� (��)] =@Z,[eNodeB��ͬƵ�л������Դ��� (��)] =@AA,[eNB���л��ɹ��� (%)] =@AB,[eNB���л��ɹ��� (%)] =@AC,[ͬƵ�л��ɹ���zsp (%)] =@AD,[��Ƶ�л��ɹ���zsp (%)] =@AE,[�л��ɹ��� (%)] =@AF,[С��PDCP�������յ����������ݵ��������� (����)] =@AG,[С��PDCP�������͵��������ݵ��������� (����)] =@AH,[RRC�ؽ�������� (��)] =@AI,[RRC�����ؽ����� (%)] =@AJ, [ͨ���ؽ���ԴС����eNodeB��ͬƵ�л���ִ�гɹ����� (��)] =@AK,[ͨ���ؽ���ԴС����eNodeB����Ƶ�л���ִ�гɹ����� (��)] = @AL,[ͨ���ؽ���ԴС����eNodeB��ͬƵ�л���ִ�гɹ����� (��)] =  @AM,[ͨ���ؽ���ԴС����eNodeB����Ƶ�л���ִ�гɹ����� (��)] =@AN,[eNB���л����ɹ����� (��)] =@AO,[eNB���л���������� (��)]=@AP WHERE ��ʼʱ��=@A AND С��=@E
	   PRINT'UPDATE!'
end
ELSE
INSERT INTO tbKPI VALUES (@A ,@B ,@C , @D ,  @E ,  @F ,  @G ,  @H ,  @I ,  @J ,  @K ,  @L ,  @M ,  @N ,  @O ,  @P ,  @Q ,  @R ,  @S ,  @T ,  @U ,  @V ,  @W ,  @X ,  @Y ,  @Z ,  @AA ,  @AB ,  @AC ,  @AD ,  @AE ,  @AF ,  @AG ,  @AH ,  @AI ,@AJ ,  @AK ,  @AL ,  @AM ,  @AN ,  @AO ,  @AP )
print 'success!'
