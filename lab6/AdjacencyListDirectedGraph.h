#ifndef LAB6_ADJACENCYLISTDIRECTEDGRAPH_H
#define LAB6_ADJACENCYLISTDIRECTEDGRAPH_H

#include <iostream>
#include <list>
#include <stdexcept>

using namespace std;

template<typename V, typename E>
class AdjacencyListDirectedGraph {

  public:

    // Define public data types of Vertex and Edge and the associated iterators.

    class Vertex;
    class Edge;

    typedef list<Vertex> VertexList;
    typedef list<Edge> EdgeList;
    typedef typename VertexList::iterator VertexItor;
    typedef typename EdgeList::iterator EdgeItor;
    typedef typename VertexList::const_iterator VertexConstItor;
    typedef typename EdgeList::const_iterator EdgeConstItor;  

  private:

    // Define private data types of VertexObject and EdgeObject and the associated iterators.
    // The type of IncidenceEdgesList and its iterator are defined as well.

    struct VertexObject;
    struct EdgeObject;

    typedef list<VertexObject> VertexObjectList;
    typedef list<EdgeObject> EdgeObjectList;
    typedef list<EdgeList> IncidenceEdgesList;

    typedef typename VertexObjectList::iterator VertexObjectItor;
    typedef typename EdgeObjectList::iterator EdgeObjectItor;
    typedef typename IncidenceEdgesList::iterator IncidenceEdgesItor; 

    VertexObjectList vertex_collection;
    EdgeObjectList edge_collection;
    IncidenceEdgesList inc_edges_collection;

  public:

    /*
     * Return the list of vertices in this graph.
     */
    VertexList vertices() {
      VertexList result;
      for (auto &it : vertex_collection)
        result.push_back(Vertex(*this, &it));
      return result;
    }

    /*
     * Return the list of edges in this graph.
     */
    EdgeList edges() {
    }

    /*
     * Add a new vertex to this graph.
     *
     * x - the element to be stored in the new vertex.
     * Return the newly created vertex.
     */
    Vertex insertVertex(const V& x) {
      VertexObject v_obj = VertexObject(x);
      v_obj.pos = vertex_collection.end();
      vertex_collection.push_back(v_obj);

      return Vertex(*this, &v_obj);
    }

    /*
     * Add a new edge to this graph. Throw an exception
     * if an edge has already existed between v and w.
     *
     * v - the vertex at the origin
     * w - the vertex at the destination
     * x - the element to be stored in the new edge.
     * Return the newly created edge.
     */
    Edge insertDirectedEdge(const Vertex& from, const Vertex& to, E x) {
      EdgeObject e_obj = EdgeObject(from, to, x);
      e_obj.pos = edge_collection.end();
      edge_collection.push_back(e_obj);
      return Edge(&e_obj);
    }

    /*
     * Remove a vertex from this graph. All edges that contain
     * v as one of their vertices are also removed.
     *
     * v - a vertex
     */
    void eraseVertex(const Vertex& v) {
      auto pos = v.v_obj->pos;
      vertex_collection.erase(pos);
      EdgeList toRemove;
      for (auto &it : edge_collection) {
        Edge edge = Edge(&it);
        if (edge.isIncidentOn(v))
          toRemove.push_back(edge);
      }
      for (auto &it : toRemove)
        eraseEdge(it);
    }

    /*
     * Remove an edge from this graph.
     *
     * e - an edge
     */
    void eraseEdge(const Edge& e) {
      edge_collection.erase(e.e_obj->pos);
    }

};

/*
 * VertexObject stores data of a vertex.
 */
template<typename V, typename E>
struct AdjacencyListDirectedGraph<V, E> :: VertexObject {
  V elt;                             // the element stored at this vertex
  VertexObjectItor pos;              // position in vertex_collection
  IncidenceEdgesItor inc_edges_pos;  // position in inc_edges_collection

  VertexObject(V elt) : elt(elt) {}  // pos and inc_edges_pos are initially "NULL".
};

/*
 * EdgeObject stores data of an edge.
 */
template<typename V, typename E>
struct AdjacencyListDirectedGraph<V, E> :: EdgeObject {
  E elt;                          // the element stored at this edge
  Vertex from;           // the vertex at the origin
  Vertex to;             // the vertex at the destination
  EdgeObjectItor pos;             // position in edge_collection
  EdgeItor origin_inc_edges_pos;  // position in an edge list in inc_edges_collection
  EdgeItor dest_inc_edges_pos;    // position in an edge list in inc_edges_collection

  EdgeObject(const Vertex& from, const Vertex& to, E elt)
    : elt(elt), from(from), to(to) {} // pos origin_inc_edges_pos, and dest_inc_edges_pos are initially "NULL".
};

template<typename V, typename E>
class AdjacencyListDirectedGraph<V, E>::Vertex {

  VertexObject *v_obj;
  AdjacencyListDirectedGraph *parent;

  public:

  Vertex() {
    parent = NULL;
  }

  /*
   * The constructor of Vertex. This subsumes the default constructor.
   *
   * v - a pointer to a VertexObject
   */
  Vertex(AdjacencyListDirectedGraph &parent,
      VertexObject* v = NULL) : v_obj(v), parent(&parent) {}


  /*
   * Return the element stored at this vertex.
   */
  V& operator*() const {
    return v_obj->elt;
  }

  /*
   * Return a list of edges incident to this vertex.
   */
  EdgeList incidentEdges() const {
    EdgeList result;
    for (auto &it : parent->edge_collection) {
      Edge edge = Edge(&it);
      if (edge.isIncidentOn(*this))
        result.push_back(edge);
    }
    return result;
  }

  /*
   * Check whether a vertex is adjacent to this vertex.
   * This means whether there is an edge that has this vertex
   * and the given vertex as the end points.
   *
   * v - the given vertex
   */
  bool isAdjacentTo(const Vertex& v) const {
    for (auto it : parent->edge_collection)
      if (it.from == *this && it.to == v)
        return true;
      else if (it.from == v && it.to == *this)
        return true;
    return false;
  }

  /*
   * Check whether there is a directed edge connecting this vertex to the given vertex.
   *
   * v - the given vertex
   */
  bool isOutgoingTo(const Vertex& v) const {
    for (auto it : parent->edge_collection)
      if (it.from == *this && it.to == v)
        return true;
    return false;

  }

  /*
   * Return a directed edge connecting this vertex to the given vertex.
   * If the directed edge does not exist, throw an exception.
   *
   * v - the given vertex
   * Return the directed edge connecting this vertex to the given vertex.
   */
  Edge outgoingEdge(const Vertex& v) const {
    for (auto &it : parent->edge_collection)
      if (it.from == *this && it.to == v)
        return Edge(&it);
    throw runtime_error("Edge doesn't exist!");
  }

  /*
   * Return the set of all directed edges connecting this vertex to any vertex.
   */
  EdgeList outgoingEdges() const {
    EdgeList result;
    for (auto &it : parent->edge_collection)
      if (it.from == *this)
        result.push_back(Edge(&it));
    return result;
  }

  /*
   * Check whether this vertex is the same as the given vertex
   *
   * v - the given vertex
   * Return true if this vertex is the same as the given vertex
   */
  bool operator==(const Vertex& v) const {
    return v_obj->pos == v.v_obj->pos;
  }

  bool operator!=(const Vertex& v) const {
    return v_obj->pos != v.v_obj->pos;
  }

  /*
   * Declare friend to AdjacencyListDirectedGraph so that
   * AdjacencyListDirectedGraph can access to the private
   * member variables of this class.
   */
  friend class AdjacencyListDirectedGraph<V,E>;
};

/*
 * Edge is a position class of an edge in AdjacencyListDirectedGraph.
 * Internally, an edge is a pointer to an entry in edge_collection.
 */
template<typename V, typename E>
class AdjacencyListDirectedGraph<V, E> :: Edge {

  EdgeObject *e_obj;

  public:

  /*
   * The constructor of Edge. This subsumes the default constructor.
   *
   * v - a pointer to a EdgeObject
   */
  Edge(EdgeObject* e = NULL) : e_obj(e) {}

  /*
   * Return the element stored at this edge.
   */
  E& operator*() const {
    return e_obj->elt;
  }

  /*
   * Return the vertices of this directed edge.
   * The first element of the vertex list is the vertex of the origin.
   * The second element of the vertex list is the vertex of the destination.
   */
  VertexList endVertices() const {
    VertexList ends;
    ends.push_back(origin());
    ends.push_back(dest());
    return ends;
  }

  /*
   * Return the vertex of this edge that is different from the given vertex.
   * If the given vertex is origin, return destination.
   * If the given vertex is destination, return origin.
   * If the given vertex is neither origin nor destination, throw an exception.
   *
   * v - the given vertex
   * Return the other vertex of this edge
   */
  Vertex opposite(const Vertex& v) const {
    Vertex from = origin();
    Vertex to = dest();
    if (v != from && v != to)
      throw runtime_error("Opposite – Invalid argument!");
    return v == from ? to : from;
  }

  /*
   * Check whether a given edge is adjacent to this edge.
   * This means that whether the given edge and this edge
   * shared a vertex.
   *
   * edge - the given edge
   * Return true if the given edge is adjacent to this edge.
   */
  bool isAdjacentTo(const Edge& edge) const {
    bool share = false;
    share |= (origin() == edge.origin() || origin() == edge.dest());
    share |= (dest() == edge.origin() || dest() == edge.dest());
    return share;
  }

  /*
   * Check whether a vertex is incident on this edge.
   * This means that whether the vertex is a vertex of this edge.
   *
   * v - the given vertex
   * Return true if the given vertex is incident to this edge.
   */
  bool isIncidentOn(const Vertex& v) const {
    return v == origin() || v == dest();
  }

  /*
   * Return the vertex at the origin of this edge.
   */
  Vertex origin() const {
    return e_obj->from;
  }

  /*
   * Return the vertex at the destination of this edge.
   */
  Vertex dest() const {
    return e_obj->to;
  }

  /*
   * Return true if this is a directed edge.
   * In this class, it should always return true.
   */
  bool isDirected() const {
    return true;
  }

  /*
   * Check whether this edge is the same as the given edge.
   *
   * edge - the given edge
   * Return true if this edge is the same as the given edge.
   */
  bool operator==(const Edge& edge) const {
    return e_obj->pos == edge.e_obj->pos;
  }

  /*
   * Declare friend to AdjacencyListDirectedGraph so that
   * AdjacencyListDirectedGraph can access to the private
   * member variables of this class.
   */
  friend class AdjacencyListDirectedGraph<V,E>;
};

#endif //LAB6_ADJACENCYLISTDIRECTEDGRAPH_H
