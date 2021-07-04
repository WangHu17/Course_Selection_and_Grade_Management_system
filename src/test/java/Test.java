import com.example.experiment2.bean.UStudent;
import com.example.experiment2.dao.UStudentMapper;
import org.apache.ibatis.session.SqlSession;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.io.IOException;
import java.text.DecimalFormat;
import java.time.Year;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

/**
 * @author wanghu
 * @discrption：
 * @create 2021-05-12 10:52
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"classpath:applicationContext.xml"})
public class Test {

    @Autowired
    UStudentMapper uStudentMapper;

    @Autowired
    SqlSession sqlSession;

    @org.junit.Test
    public void testAddStudents() throws IOException {
        for (int i=2; i<=50; i++){
            DecimalFormat decimalFormat = new DecimalFormat("00");
            String s = decimalFormat.format(i);
            UStudent uStudent = new UStudent("22010020" + s, "20"+s);
            uStudentMapper.insert(uStudent);
        }

    }

}
