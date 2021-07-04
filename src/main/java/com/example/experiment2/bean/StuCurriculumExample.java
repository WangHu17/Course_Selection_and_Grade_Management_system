package com.example.experiment2.bean;

import java.util.ArrayList;
import java.util.List;

public class StuCurriculumExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public StuCurriculumExample() {
        oredCriteria = new ArrayList<>();
    }

    public void setOrderByClause(String orderByClause) {
        this.orderByClause = orderByClause;
    }

    public String getOrderByClause() {
        return orderByClause;
    }

    public void setDistinct(boolean distinct) {
        this.distinct = distinct;
    }

    public boolean isDistinct() {
        return distinct;
    }

    public List<Criteria> getOredCriteria() {
        return oredCriteria;
    }

    public void or(Criteria criteria) {
        oredCriteria.add(criteria);
    }

    public Criteria or() {
        Criteria criteria = createCriteriaInternal();
        oredCriteria.add(criteria);
        return criteria;
    }

    public Criteria createCriteria() {
        Criteria criteria = createCriteriaInternal();
        if (oredCriteria.size() == 0) {
            oredCriteria.add(criteria);
        }
        return criteria;
    }

    protected Criteria createCriteriaInternal() {
        Criteria criteria = new Criteria();
        return criteria;
    }

    public void clear() {
        oredCriteria.clear();
        orderByClause = null;
        distinct = false;
    }

    protected abstract static class GeneratedCriteria {
        protected List<Criterion> criteria;

        protected GeneratedCriteria() {
            super();
            criteria = new ArrayList<>();
        }

        public boolean isValid() {
            return criteria.size() > 0;
        }

        public List<Criterion> getAllCriteria() {
            return criteria;
        }

        public List<Criterion> getCriteria() {
            return criteria;
        }

        protected void addCriterion(String condition) {
            if (condition == null) {
                throw new RuntimeException("Value for condition cannot be null");
            }
            criteria.add(new Criterion(condition));
        }

        protected void addCriterion(String condition, Object value, String property) {
            if (value == null) {
                throw new RuntimeException("Value for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value));
        }

        protected void addCriterion(String condition, Object value1, Object value2, String property) {
            if (value1 == null || value2 == null) {
                throw new RuntimeException("Between values for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value1, value2));
        }

        public Criteria andIdIsNull() {
            addCriterion("id is null");
            return (Criteria) this;
        }

        public Criteria andIdIsNotNull() {
            addCriterion("id is not null");
            return (Criteria) this;
        }

        public Criteria andIdEqualTo(Integer value) {
            addCriterion("id =", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdNotEqualTo(Integer value) {
            addCriterion("id <>", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdGreaterThan(Integer value) {
            addCriterion("id >", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("id >=", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdLessThan(Integer value) {
            addCriterion("id <", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdLessThanOrEqualTo(Integer value) {
            addCriterion("id <=", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdIn(List<Integer> values) {
            addCriterion("id in", values, "id");
            return (Criteria) this;
        }

        public Criteria andIdNotIn(List<Integer> values) {
            addCriterion("id not in", values, "id");
            return (Criteria) this;
        }

        public Criteria andIdBetween(Integer value1, Integer value2) {
            addCriterion("id between", value1, value2, "id");
            return (Criteria) this;
        }

        public Criteria andIdNotBetween(Integer value1, Integer value2) {
            addCriterion("id not between", value1, value2, "id");
            return (Criteria) this;
        }

        public Criteria andCourseIdIsNull() {
            addCriterion("course_id is null");
            return (Criteria) this;
        }

        public Criteria andCourseIdIsNotNull() {
            addCriterion("course_id is not null");
            return (Criteria) this;
        }

        public Criteria andCourseIdEqualTo(Integer value) {
            addCriterion("course_id =", value, "courseId");
            return (Criteria) this;
        }

        public Criteria andCourseIdNotEqualTo(Integer value) {
            addCriterion("course_id <>", value, "courseId");
            return (Criteria) this;
        }

        public Criteria andCourseIdGreaterThan(Integer value) {
            addCriterion("course_id >", value, "courseId");
            return (Criteria) this;
        }

        public Criteria andCourseIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("course_id >=", value, "courseId");
            return (Criteria) this;
        }

        public Criteria andCourseIdLessThan(Integer value) {
            addCriterion("course_id <", value, "courseId");
            return (Criteria) this;
        }

        public Criteria andCourseIdLessThanOrEqualTo(Integer value) {
            addCriterion("course_id <=", value, "courseId");
            return (Criteria) this;
        }

        public Criteria andCourseIdIn(List<Integer> values) {
            addCriterion("course_id in", values, "courseId");
            return (Criteria) this;
        }

        public Criteria andCourseIdNotIn(List<Integer> values) {
            addCriterion("course_id not in", values, "courseId");
            return (Criteria) this;
        }

        public Criteria andCourseIdBetween(Integer value1, Integer value2) {
            addCriterion("course_id between", value1, value2, "courseId");
            return (Criteria) this;
        }

        public Criteria andCourseIdNotBetween(Integer value1, Integer value2) {
            addCriterion("course_id not between", value1, value2, "courseId");
            return (Criteria) this;
        }

        public Criteria andCourseNameIsNull() {
            addCriterion("course_name is null");
            return (Criteria) this;
        }

        public Criteria andCourseNameIsNotNull() {
            addCriterion("course_name is not null");
            return (Criteria) this;
        }

        public Criteria andCourseNameEqualTo(String value) {
            addCriterion("course_name =", value, "courseName");
            return (Criteria) this;
        }

        public Criteria andCourseNameNotEqualTo(String value) {
            addCriterion("course_name <>", value, "courseName");
            return (Criteria) this;
        }

        public Criteria andCourseNameGreaterThan(String value) {
            addCriterion("course_name >", value, "courseName");
            return (Criteria) this;
        }

        public Criteria andCourseNameGreaterThanOrEqualTo(String value) {
            addCriterion("course_name >=", value, "courseName");
            return (Criteria) this;
        }

        public Criteria andCourseNameLessThan(String value) {
            addCriterion("course_name <", value, "courseName");
            return (Criteria) this;
        }

        public Criteria andCourseNameLessThanOrEqualTo(String value) {
            addCriterion("course_name <=", value, "courseName");
            return (Criteria) this;
        }

        public Criteria andCourseNameLike(String value) {
            addCriterion("course_name like", value, "courseName");
            return (Criteria) this;
        }

        public Criteria andCourseNameNotLike(String value) {
            addCriterion("course_name not like", value, "courseName");
            return (Criteria) this;
        }

        public Criteria andCourseNameIn(List<String> values) {
            addCriterion("course_name in", values, "courseName");
            return (Criteria) this;
        }

        public Criteria andCourseNameNotIn(List<String> values) {
            addCriterion("course_name not in", values, "courseName");
            return (Criteria) this;
        }

        public Criteria andCourseNameBetween(String value1, String value2) {
            addCriterion("course_name between", value1, value2, "courseName");
            return (Criteria) this;
        }

        public Criteria andCourseNameNotBetween(String value1, String value2) {
            addCriterion("course_name not between", value1, value2, "courseName");
            return (Criteria) this;
        }

        public Criteria andCourseNatureIsNull() {
            addCriterion("course_nature is null");
            return (Criteria) this;
        }

        public Criteria andCourseNatureIsNotNull() {
            addCriterion("course_nature is not null");
            return (Criteria) this;
        }

        public Criteria andCourseNatureEqualTo(String value) {
            addCriterion("course_nature =", value, "courseNature");
            return (Criteria) this;
        }

        public Criteria andCourseNatureNotEqualTo(String value) {
            addCriterion("course_nature <>", value, "courseNature");
            return (Criteria) this;
        }

        public Criteria andCourseNatureGreaterThan(String value) {
            addCriterion("course_nature >", value, "courseNature");
            return (Criteria) this;
        }

        public Criteria andCourseNatureGreaterThanOrEqualTo(String value) {
            addCriterion("course_nature >=", value, "courseNature");
            return (Criteria) this;
        }

        public Criteria andCourseNatureLessThan(String value) {
            addCriterion("course_nature <", value, "courseNature");
            return (Criteria) this;
        }

        public Criteria andCourseNatureLessThanOrEqualTo(String value) {
            addCriterion("course_nature <=", value, "courseNature");
            return (Criteria) this;
        }

        public Criteria andCourseNatureLike(String value) {
            addCriterion("course_nature like", value, "courseNature");
            return (Criteria) this;
        }

        public Criteria andCourseNatureNotLike(String value) {
            addCriterion("course_nature not like", value, "courseNature");
            return (Criteria) this;
        }

        public Criteria andCourseNatureIn(List<String> values) {
            addCriterion("course_nature in", values, "courseNature");
            return (Criteria) this;
        }

        public Criteria andCourseNatureNotIn(List<String> values) {
            addCriterion("course_nature not in", values, "courseNature");
            return (Criteria) this;
        }

        public Criteria andCourseNatureBetween(String value1, String value2) {
            addCriterion("course_nature between", value1, value2, "courseNature");
            return (Criteria) this;
        }

        public Criteria andCourseNatureNotBetween(String value1, String value2) {
            addCriterion("course_nature not between", value1, value2, "courseNature");
            return (Criteria) this;
        }

        public Criteria andCourseSelectedIdIsNull() {
            addCriterion("course_selected_ID is null");
            return (Criteria) this;
        }

        public Criteria andCourseSelectedIdIsNotNull() {
            addCriterion("course_selected_ID is not null");
            return (Criteria) this;
        }

        public Criteria andCourseSelectedIdEqualTo(String value) {
            addCriterion("course_selected_ID =", value, "courseSelectedId");
            return (Criteria) this;
        }

        public Criteria andCourseSelectedIdNotEqualTo(String value) {
            addCriterion("course_selected_ID <>", value, "courseSelectedId");
            return (Criteria) this;
        }

        public Criteria andCourseSelectedIdGreaterThan(String value) {
            addCriterion("course_selected_ID >", value, "courseSelectedId");
            return (Criteria) this;
        }

        public Criteria andCourseSelectedIdGreaterThanOrEqualTo(String value) {
            addCriterion("course_selected_ID >=", value, "courseSelectedId");
            return (Criteria) this;
        }

        public Criteria andCourseSelectedIdLessThan(String value) {
            addCriterion("course_selected_ID <", value, "courseSelectedId");
            return (Criteria) this;
        }

        public Criteria andCourseSelectedIdLessThanOrEqualTo(String value) {
            addCriterion("course_selected_ID <=", value, "courseSelectedId");
            return (Criteria) this;
        }

        public Criteria andCourseSelectedIdLike(String value) {
            addCriterion("course_selected_ID like", value, "courseSelectedId");
            return (Criteria) this;
        }

        public Criteria andCourseSelectedIdNotLike(String value) {
            addCriterion("course_selected_ID not like", value, "courseSelectedId");
            return (Criteria) this;
        }

        public Criteria andCourseSelectedIdIn(List<String> values) {
            addCriterion("course_selected_ID in", values, "courseSelectedId");
            return (Criteria) this;
        }

        public Criteria andCourseSelectedIdNotIn(List<String> values) {
            addCriterion("course_selected_ID not in", values, "courseSelectedId");
            return (Criteria) this;
        }

        public Criteria andCourseSelectedIdBetween(String value1, String value2) {
            addCriterion("course_selected_ID between", value1, value2, "courseSelectedId");
            return (Criteria) this;
        }

        public Criteria andCourseSelectedIdNotBetween(String value1, String value2) {
            addCriterion("course_selected_ID not between", value1, value2, "courseSelectedId");
            return (Criteria) this;
        }

        public Criteria andCourseSelectedStuIsNull() {
            addCriterion("course_selected_stu is null");
            return (Criteria) this;
        }

        public Criteria andCourseSelectedStuIsNotNull() {
            addCriterion("course_selected_stu is not null");
            return (Criteria) this;
        }

        public Criteria andCourseSelectedStuEqualTo(String value) {
            addCriterion("course_selected_stu =", value, "courseSelectedStu");
            return (Criteria) this;
        }

        public Criteria andCourseSelectedStuNotEqualTo(String value) {
            addCriterion("course_selected_stu <>", value, "courseSelectedStu");
            return (Criteria) this;
        }

        public Criteria andCourseSelectedStuGreaterThan(String value) {
            addCriterion("course_selected_stu >", value, "courseSelectedStu");
            return (Criteria) this;
        }

        public Criteria andCourseSelectedStuGreaterThanOrEqualTo(String value) {
            addCriterion("course_selected_stu >=", value, "courseSelectedStu");
            return (Criteria) this;
        }

        public Criteria andCourseSelectedStuLessThan(String value) {
            addCriterion("course_selected_stu <", value, "courseSelectedStu");
            return (Criteria) this;
        }

        public Criteria andCourseSelectedStuLessThanOrEqualTo(String value) {
            addCriterion("course_selected_stu <=", value, "courseSelectedStu");
            return (Criteria) this;
        }

        public Criteria andCourseSelectedStuLike(String value) {
            addCriterion("course_selected_stu like", value, "courseSelectedStu");
            return (Criteria) this;
        }

        public Criteria andCourseSelectedStuNotLike(String value) {
            addCriterion("course_selected_stu not like", value, "courseSelectedStu");
            return (Criteria) this;
        }

        public Criteria andCourseSelectedStuIn(List<String> values) {
            addCriterion("course_selected_stu in", values, "courseSelectedStu");
            return (Criteria) this;
        }

        public Criteria andCourseSelectedStuNotIn(List<String> values) {
            addCriterion("course_selected_stu not in", values, "courseSelectedStu");
            return (Criteria) this;
        }

        public Criteria andCourseSelectedStuBetween(String value1, String value2) {
            addCriterion("course_selected_stu between", value1, value2, "courseSelectedStu");
            return (Criteria) this;
        }

        public Criteria andCourseSelectedStuNotBetween(String value1, String value2) {
            addCriterion("course_selected_stu not between", value1, value2, "courseSelectedStu");
            return (Criteria) this;
        }

        public Criteria andCourseStatusIsNull() {
            addCriterion("course_status is null");
            return (Criteria) this;
        }

        public Criteria andCourseStatusIsNotNull() {
            addCriterion("course_status is not null");
            return (Criteria) this;
        }

        public Criteria andCourseStatusEqualTo(String value) {
            addCriterion("course_status =", value, "courseStatus");
            return (Criteria) this;
        }

        public Criteria andCourseStatusNotEqualTo(String value) {
            addCriterion("course_status <>", value, "courseStatus");
            return (Criteria) this;
        }

        public Criteria andCourseStatusGreaterThan(String value) {
            addCriterion("course_status >", value, "courseStatus");
            return (Criteria) this;
        }

        public Criteria andCourseStatusGreaterThanOrEqualTo(String value) {
            addCriterion("course_status >=", value, "courseStatus");
            return (Criteria) this;
        }

        public Criteria andCourseStatusLessThan(String value) {
            addCriterion("course_status <", value, "courseStatus");
            return (Criteria) this;
        }

        public Criteria andCourseStatusLessThanOrEqualTo(String value) {
            addCriterion("course_status <=", value, "courseStatus");
            return (Criteria) this;
        }

        public Criteria andCourseStatusLike(String value) {
            addCriterion("course_status like", value, "courseStatus");
            return (Criteria) this;
        }

        public Criteria andCourseStatusNotLike(String value) {
            addCriterion("course_status not like", value, "courseStatus");
            return (Criteria) this;
        }

        public Criteria andCourseStatusIn(List<String> values) {
            addCriterion("course_status in", values, "courseStatus");
            return (Criteria) this;
        }

        public Criteria andCourseStatusNotIn(List<String> values) {
            addCriterion("course_status not in", values, "courseStatus");
            return (Criteria) this;
        }

        public Criteria andCourseStatusBetween(String value1, String value2) {
            addCriterion("course_status between", value1, value2, "courseStatus");
            return (Criteria) this;
        }

        public Criteria andCourseStatusNotBetween(String value1, String value2) {
            addCriterion("course_status not between", value1, value2, "courseStatus");
            return (Criteria) this;
        }

        public Criteria andGradeIsNull() {
            addCriterion("grade is null");
            return (Criteria) this;
        }

        public Criteria andGradeIsNotNull() {
            addCriterion("grade is not null");
            return (Criteria) this;
        }

        public Criteria andGradeEqualTo(Integer value) {
            addCriterion("grade =", value, "grade");
            return (Criteria) this;
        }

        public Criteria andGradeNotEqualTo(Integer value) {
            addCriterion("grade <>", value, "grade");
            return (Criteria) this;
        }

        public Criteria andGradeGreaterThan(Integer value) {
            addCriterion("grade >", value, "grade");
            return (Criteria) this;
        }

        public Criteria andGradeGreaterThanOrEqualTo(Integer value) {
            addCriterion("grade >=", value, "grade");
            return (Criteria) this;
        }

        public Criteria andGradeLessThan(Integer value) {
            addCriterion("grade <", value, "grade");
            return (Criteria) this;
        }

        public Criteria andGradeLessThanOrEqualTo(Integer value) {
            addCriterion("grade <=", value, "grade");
            return (Criteria) this;
        }

        public Criteria andGradeIn(List<Integer> values) {
            addCriterion("grade in", values, "grade");
            return (Criteria) this;
        }

        public Criteria andGradeNotIn(List<Integer> values) {
            addCriterion("grade not in", values, "grade");
            return (Criteria) this;
        }

        public Criteria andGradeBetween(Integer value1, Integer value2) {
            addCriterion("grade between", value1, value2, "grade");
            return (Criteria) this;
        }

        public Criteria andGradeNotBetween(Integer value1, Integer value2) {
            addCriterion("grade not between", value1, value2, "grade");
            return (Criteria) this;
        }
    }

    public static class Criteria extends GeneratedCriteria {
        protected Criteria() {
            super();
        }
    }

    public static class Criterion {
        private String condition;

        private Object value;

        private Object secondValue;

        private boolean noValue;

        private boolean singleValue;

        private boolean betweenValue;

        private boolean listValue;

        private String typeHandler;

        public String getCondition() {
            return condition;
        }

        public Object getValue() {
            return value;
        }

        public Object getSecondValue() {
            return secondValue;
        }

        public boolean isNoValue() {
            return noValue;
        }

        public boolean isSingleValue() {
            return singleValue;
        }

        public boolean isBetweenValue() {
            return betweenValue;
        }

        public boolean isListValue() {
            return listValue;
        }

        public String getTypeHandler() {
            return typeHandler;
        }

        protected Criterion(String condition) {
            super();
            this.condition = condition;
            this.typeHandler = null;
            this.noValue = true;
        }

        protected Criterion(String condition, Object value, String typeHandler) {
            super();
            this.condition = condition;
            this.value = value;
            this.typeHandler = typeHandler;
            if (value instanceof List<?>) {
                this.listValue = true;
            } else {
                this.singleValue = true;
            }
        }

        protected Criterion(String condition, Object value) {
            this(condition, value, null);
        }

        protected Criterion(String condition, Object value, Object secondValue, String typeHandler) {
            super();
            this.condition = condition;
            this.value = value;
            this.secondValue = secondValue;
            this.typeHandler = typeHandler;
            this.betweenValue = true;
        }

        protected Criterion(String condition, Object value, Object secondValue) {
            this(condition, value, secondValue, null);
        }
    }
}