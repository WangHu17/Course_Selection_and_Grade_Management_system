package com.example.experiment2.bean;

import java.util.ArrayList;
import java.util.List;

public class ClassInfoExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public ClassInfoExample() {
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

        public Criteria andClassNameIsNull() {
            addCriterion("class_name is null");
            return (Criteria) this;
        }

        public Criteria andClassNameIsNotNull() {
            addCriterion("class_name is not null");
            return (Criteria) this;
        }

        public Criteria andClassNameEqualTo(String value) {
            addCriterion("class_name =", value, "className");
            return (Criteria) this;
        }

        public Criteria andClassNameNotEqualTo(String value) {
            addCriterion("class_name <>", value, "className");
            return (Criteria) this;
        }

        public Criteria andClassNameGreaterThan(String value) {
            addCriterion("class_name >", value, "className");
            return (Criteria) this;
        }

        public Criteria andClassNameGreaterThanOrEqualTo(String value) {
            addCriterion("class_name >=", value, "className");
            return (Criteria) this;
        }

        public Criteria andClassNameLessThan(String value) {
            addCriterion("class_name <", value, "className");
            return (Criteria) this;
        }

        public Criteria andClassNameLessThanOrEqualTo(String value) {
            addCriterion("class_name <=", value, "className");
            return (Criteria) this;
        }

        public Criteria andClassNameLike(String value) {
            addCriterion("class_name like", value, "className");
            return (Criteria) this;
        }

        public Criteria andClassNameNotLike(String value) {
            addCriterion("class_name not like", value, "className");
            return (Criteria) this;
        }

        public Criteria andClassNameIn(List<String> values) {
            addCriterion("class_name in", values, "className");
            return (Criteria) this;
        }

        public Criteria andClassNameNotIn(List<String> values) {
            addCriterion("class_name not in", values, "className");
            return (Criteria) this;
        }

        public Criteria andClassNameBetween(String value1, String value2) {
            addCriterion("class_name between", value1, value2, "className");
            return (Criteria) this;
        }

        public Criteria andClassNameNotBetween(String value1, String value2) {
            addCriterion("class_name not between", value1, value2, "className");
            return (Criteria) this;
        }

        public Criteria andStudentNumIsNull() {
            addCriterion("student_num is null");
            return (Criteria) this;
        }

        public Criteria andStudentNumIsNotNull() {
            addCriterion("student_num is not null");
            return (Criteria) this;
        }

        public Criteria andStudentNumEqualTo(Integer value) {
            addCriterion("student_num =", value, "studentNum");
            return (Criteria) this;
        }

        public Criteria andStudentNumNotEqualTo(Integer value) {
            addCriterion("student_num <>", value, "studentNum");
            return (Criteria) this;
        }

        public Criteria andStudentNumGreaterThan(Integer value) {
            addCriterion("student_num >", value, "studentNum");
            return (Criteria) this;
        }

        public Criteria andStudentNumGreaterThanOrEqualTo(Integer value) {
            addCriterion("student_num >=", value, "studentNum");
            return (Criteria) this;
        }

        public Criteria andStudentNumLessThan(Integer value) {
            addCriterion("student_num <", value, "studentNum");
            return (Criteria) this;
        }

        public Criteria andStudentNumLessThanOrEqualTo(Integer value) {
            addCriterion("student_num <=", value, "studentNum");
            return (Criteria) this;
        }

        public Criteria andStudentNumIn(List<Integer> values) {
            addCriterion("student_num in", values, "studentNum");
            return (Criteria) this;
        }

        public Criteria andStudentNumNotIn(List<Integer> values) {
            addCriterion("student_num not in", values, "studentNum");
            return (Criteria) this;
        }

        public Criteria andStudentNumBetween(Integer value1, Integer value2) {
            addCriterion("student_num between", value1, value2, "studentNum");
            return (Criteria) this;
        }

        public Criteria andStudentNumNotBetween(Integer value1, Integer value2) {
            addCriterion("student_num not between", value1, value2, "studentNum");
            return (Criteria) this;
        }

        public Criteria andMonitorIsNull() {
            addCriterion("monitor is null");
            return (Criteria) this;
        }

        public Criteria andMonitorIsNotNull() {
            addCriterion("monitor is not null");
            return (Criteria) this;
        }

        public Criteria andMonitorEqualTo(String value) {
            addCriterion("monitor =", value, "monitor");
            return (Criteria) this;
        }

        public Criteria andMonitorNotEqualTo(String value) {
            addCriterion("monitor <>", value, "monitor");
            return (Criteria) this;
        }

        public Criteria andMonitorGreaterThan(String value) {
            addCriterion("monitor >", value, "monitor");
            return (Criteria) this;
        }

        public Criteria andMonitorGreaterThanOrEqualTo(String value) {
            addCriterion("monitor >=", value, "monitor");
            return (Criteria) this;
        }

        public Criteria andMonitorLessThan(String value) {
            addCriterion("monitor <", value, "monitor");
            return (Criteria) this;
        }

        public Criteria andMonitorLessThanOrEqualTo(String value) {
            addCriterion("monitor <=", value, "monitor");
            return (Criteria) this;
        }

        public Criteria andMonitorLike(String value) {
            addCriterion("monitor like", value, "monitor");
            return (Criteria) this;
        }

        public Criteria andMonitorNotLike(String value) {
            addCriterion("monitor not like", value, "monitor");
            return (Criteria) this;
        }

        public Criteria andMonitorIn(List<String> values) {
            addCriterion("monitor in", values, "monitor");
            return (Criteria) this;
        }

        public Criteria andMonitorNotIn(List<String> values) {
            addCriterion("monitor not in", values, "monitor");
            return (Criteria) this;
        }

        public Criteria andMonitorBetween(String value1, String value2) {
            addCriterion("monitor between", value1, value2, "monitor");
            return (Criteria) this;
        }

        public Criteria andMonitorNotBetween(String value1, String value2) {
            addCriterion("monitor not between", value1, value2, "monitor");
            return (Criteria) this;
        }

        public Criteria andStudyCommitteeIsNull() {
            addCriterion("study_committee is null");
            return (Criteria) this;
        }

        public Criteria andStudyCommitteeIsNotNull() {
            addCriterion("study_committee is not null");
            return (Criteria) this;
        }

        public Criteria andStudyCommitteeEqualTo(String value) {
            addCriterion("study_committee =", value, "studyCommittee");
            return (Criteria) this;
        }

        public Criteria andStudyCommitteeNotEqualTo(String value) {
            addCriterion("study_committee <>", value, "studyCommittee");
            return (Criteria) this;
        }

        public Criteria andStudyCommitteeGreaterThan(String value) {
            addCriterion("study_committee >", value, "studyCommittee");
            return (Criteria) this;
        }

        public Criteria andStudyCommitteeGreaterThanOrEqualTo(String value) {
            addCriterion("study_committee >=", value, "studyCommittee");
            return (Criteria) this;
        }

        public Criteria andStudyCommitteeLessThan(String value) {
            addCriterion("study_committee <", value, "studyCommittee");
            return (Criteria) this;
        }

        public Criteria andStudyCommitteeLessThanOrEqualTo(String value) {
            addCriterion("study_committee <=", value, "studyCommittee");
            return (Criteria) this;
        }

        public Criteria andStudyCommitteeLike(String value) {
            addCriterion("study_committee like", value, "studyCommittee");
            return (Criteria) this;
        }

        public Criteria andStudyCommitteeNotLike(String value) {
            addCriterion("study_committee not like", value, "studyCommittee");
            return (Criteria) this;
        }

        public Criteria andStudyCommitteeIn(List<String> values) {
            addCriterion("study_committee in", values, "studyCommittee");
            return (Criteria) this;
        }

        public Criteria andStudyCommitteeNotIn(List<String> values) {
            addCriterion("study_committee not in", values, "studyCommittee");
            return (Criteria) this;
        }

        public Criteria andStudyCommitteeBetween(String value1, String value2) {
            addCriterion("study_committee between", value1, value2, "studyCommittee");
            return (Criteria) this;
        }

        public Criteria andStudyCommitteeNotBetween(String value1, String value2) {
            addCriterion("study_committee not between", value1, value2, "studyCommittee");
            return (Criteria) this;
        }

        public Criteria andLifeCommitteeIsNull() {
            addCriterion("life_committee is null");
            return (Criteria) this;
        }

        public Criteria andLifeCommitteeIsNotNull() {
            addCriterion("life_committee is not null");
            return (Criteria) this;
        }

        public Criteria andLifeCommitteeEqualTo(String value) {
            addCriterion("life_committee =", value, "lifeCommittee");
            return (Criteria) this;
        }

        public Criteria andLifeCommitteeNotEqualTo(String value) {
            addCriterion("life_committee <>", value, "lifeCommittee");
            return (Criteria) this;
        }

        public Criteria andLifeCommitteeGreaterThan(String value) {
            addCriterion("life_committee >", value, "lifeCommittee");
            return (Criteria) this;
        }

        public Criteria andLifeCommitteeGreaterThanOrEqualTo(String value) {
            addCriterion("life_committee >=", value, "lifeCommittee");
            return (Criteria) this;
        }

        public Criteria andLifeCommitteeLessThan(String value) {
            addCriterion("life_committee <", value, "lifeCommittee");
            return (Criteria) this;
        }

        public Criteria andLifeCommitteeLessThanOrEqualTo(String value) {
            addCriterion("life_committee <=", value, "lifeCommittee");
            return (Criteria) this;
        }

        public Criteria andLifeCommitteeLike(String value) {
            addCriterion("life_committee like", value, "lifeCommittee");
            return (Criteria) this;
        }

        public Criteria andLifeCommitteeNotLike(String value) {
            addCriterion("life_committee not like", value, "lifeCommittee");
            return (Criteria) this;
        }

        public Criteria andLifeCommitteeIn(List<String> values) {
            addCriterion("life_committee in", values, "lifeCommittee");
            return (Criteria) this;
        }

        public Criteria andLifeCommitteeNotIn(List<String> values) {
            addCriterion("life_committee not in", values, "lifeCommittee");
            return (Criteria) this;
        }

        public Criteria andLifeCommitteeBetween(String value1, String value2) {
            addCriterion("life_committee between", value1, value2, "lifeCommittee");
            return (Criteria) this;
        }

        public Criteria andLifeCommitteeNotBetween(String value1, String value2) {
            addCriterion("life_committee not between", value1, value2, "lifeCommittee");
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