package model.post;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import model.common.DBCP;

public class PostDAO {
	
	// �⺻ CRUD
	private static String sql_SELECT_ALL = "SELECT * FROM post";
	private static String sql_SELECT_ONE = "SELECT * FROM post WHERE pnum=?";
	private static String sql_INSERT = 
			"INSERT INTO post (pnum, category, title, content, p_user"
			+ " VALUES((SELECT NVL(MAX(pnum),0) + 1 FROM post), ?, ?, ?, ?)";
	private static String sql_DELETE = "DELETE FROM post WHERE pnum=?";
	private static String sql_UPDATE = "UPDATE post SET category=?, title=?, content=? pdate=sysdate WHERE pnum=?";
	
	// ����� ���� �Լ�
	// ��ȸ�� ��, ���ƿ� �� �ٿ�
	private static String sql_ViewsUp = "UPDATE post SET views=views+1 WHERE pnum=?";
	private static String sql_LikesUp = "UPDATE post SET plike=plike+1 WHERE pnum=?";
	private static String sql_LikesDown = "UPDATE post SET plike=plike-1 WHERE pnum=?";
	
	// SELECT ALL -> ��ü �� ���� ����
	public ArrayList<PostVO> SelectAll(){
		Connection conn = DBCP.connect();
		ArrayList<PostVO> datas = new ArrayList();
		PreparedStatement pstmt = null;

		try {
			pstmt = conn.prepareStatement(sql_SELECT_ALL);
			ResultSet rs = pstmt.executeQuery();
			while(rs.next()) {
				PostVO vo = new PostVO();
				vo.setPnum(rs.getInt("pnum"));
				vo.setViews(rs.getInt("views"));
				vo.setPlike(rs.getInt("plike"));
				vo.setCategory(rs.getString("category"));
				vo.setTitle(rs.getString("title"));
				vo.setContent(rs.getString("content"));
				vo.setPdate(rs.getDate("pdate"));
				vo.setP_user(rs.getString("p_user"));
				datas.add(vo);
			}
			rs.close();
		}
		catch(Exception e) {
			System.out.println("PostDAO SelectAll()���� ���");
			e.printStackTrace();
		}
		finally {
			DBCP.disconnect(pstmt, conn);
		}
		return datas;
	}

	// SELECT ONE -> �� ����
	public PostVO SelectOne(PostVO vo) {
		Connection conn=DBCP.connect();
		PostVO data=null;
		PreparedStatement pstmt=null;
		try{
			pstmt=conn.prepareStatement(sql_SELECT_ONE);
			pstmt.setInt(1, vo.getPnum());
			ResultSet rs=pstmt.executeQuery();
			if(rs.next()){
				data=new PostVO();
				data.setPnum(rs.getInt("pnum"));
				data.setViews(rs.getInt("views"));
				data.setPlike(rs.getInt("plike"));
				data.setCategory(rs.getString("category"));
				data.setTitle(rs.getString("title"));
				data.setContent(rs.getString("content"));
				data.setPdate(rs.getDate("pdate"));
				data.setP_user(rs.getString("p_user"));
			}	
			rs.close();
		}
		catch(Exception e){
			System.out.println("PostDAO SelectOne()���� ���");
			e.printStackTrace();
		}
		finally {
			DBCP.disconnect(pstmt,conn);
		}
		return data;
	}
	
	// INSERT -> pnum, pdate, views, plike�� �ڵ��Է�
	public boolean InsertDB(PostVO vo) {
		Connection conn=DBCP.connect();
		boolean res = false;
		PreparedStatement pstmt=null;
		try{
			pstmt=conn.prepareStatement(sql_INSERT);
			pstmt.setString(1, vo.getCategory());
			pstmt.setString(2, vo.getTitle());
			pstmt.setString(3, vo.getContent());
			pstmt.setString(4, vo.getP_user());
			pstmt.executeUpdate();
			res=true;
		}
		catch(Exception e){
			System.out.println("PostDAO InsertDB()���� ���");
			e.printStackTrace();
			//res=false;
		}
		finally {
			DBCP.disconnect(pstmt,conn);
		}
		return res;
	}
	
	// DELETE -> ����Ʈ ����
	public boolean DeleteDB(PostVO vo) {
		Connection conn=DBCP.connect();
		boolean res=false;
		PreparedStatement pstmt=null;
		try{
			pstmt=conn.prepareStatement(sql_DELETE);
			pstmt.setInt(1, vo.getPnum());
			pstmt.executeUpdate();
			res=true;
		}
		catch(Exception e){
			System.out.println("PostDAO DeleteDB()���� ���");
			e.printStackTrace();
			//res=false;
		}
		finally {
			DBCP.disconnect(pstmt,conn);
		}
		return res;
	}

	// UPDATE -> ī�װ�, ����, ���� ����
	public boolean UpdateDB(PostVO vo) {
		Connection conn=DBCP.connect();
		boolean res=false;
		PreparedStatement pstmt=null;
		try{
			pstmt=conn.prepareStatement(sql_UPDATE);
			pstmt.setString(1, vo.getCategory());
			pstmt.setString(2, vo.getTitle());
			pstmt.setString(3, vo.getContent());
			pstmt.setInt(4, vo.getPnum());
			pstmt.executeUpdate();
			res=true;
		}
		catch(Exception e){
			System.out.println("PostDAO UpdateDB()���� ���");
			e.printStackTrace();
			//res=false;
		}
		finally {
			DBCP.disconnect(pstmt,conn);
		}
		return res;
	}
	
	// ��ȸ�� ++
	public boolean ViewsUp(PostVO vo) {
		Connection conn=DBCP.connect();
		boolean res=false;
		PreparedStatement pstmt=null;
		try{
			pstmt=conn.prepareStatement(sql_ViewsUp);
			pstmt.setInt(1, vo.getPnum());
			pstmt.executeUpdate();
			res=true;
		}
		catch(Exception e){
			System.out.println("PostDAO ViewsUp()���� ���");
			e.printStackTrace();
			//res=false;
		}
		finally {
			DBCP.disconnect(pstmt,conn);
		}
		return res;
	}
	
	// ���ƿ� ++
	public boolean LikesUp(PostVO vo) {
		Connection conn=DBCP.connect();
		boolean res=false;
		PreparedStatement pstmt=null;
		try{
			pstmt=conn.prepareStatement(sql_LikesUp);
			pstmt.setInt(1, vo.getPnum());
			pstmt.executeUpdate();
			res=true;
		}
		catch(Exception e){
			System.out.println("PostDAO LikesUp()���� ���");
			e.printStackTrace();
			//res=false;
		}
		finally {
			DBCP.disconnect(pstmt,conn);
		}
		return res;
	}
	// ���ƿ� --
	public boolean LikesDown(PostVO vo) {
		
		Connection conn=DBCP.connect();
		boolean res=false;
		PreparedStatement pstmt=null;
		try{
			pstmt=conn.prepareStatement(sql_LikesDown);
			pstmt.setInt(1, vo.getPnum());
			pstmt.executeUpdate();
			res=true;
		}
		catch(Exception e){
			System.out.println("PostDAO LikesDown()���� ���");
			e.printStackTrace();
			//res=false;
		}
		finally {
			DBCP.disconnect(pstmt,conn);
		}
		return res;
	}
	
	
}
